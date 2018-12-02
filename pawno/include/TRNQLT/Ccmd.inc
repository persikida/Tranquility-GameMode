#if !defined CASUAL
static bool:C_CMD[2];

public OnGameModeInit()
{
	C_CMD[0] = funcidx("OnPlayerCommandCall") != -1;
	C_CMD[1] = funcidx("OnPlayerCommandFinish") != -1;
	return CallLocalFunction("F_OnGameModeInit", "");
}
#endif

public OnPlayerCommandText(playerid, cmdtext[])
{
	new Cout = 0, Func[32 char];
	Func{0} = '_';
	while(cmdtext[++Cout] > 0x20) Func{Cout} = tolower(cmdtext[Cout]);
	while(cmdtext[Cout] == 0x20) ++Cout;
#if !defined CASUAL
	if(C_CMD[0] && !CallLocalFunction("OnPlayerCommandCall", "is", playerid, cmdtext)) return true;
	if(funcidx(Func))
	{
		if(C_CMD[1]) return (!cmdtext[Cout]) ? CallLocalFunction("OnPlayerCommandFinish", "isi", playerid, cmdtext, CallLocalFunction(Func, "is", playerid, "\1")) : CallLocalFunction("OnPlayerCommandFinish", "isi", playerid, cmdtext, CallLocalFunction(Func, "is", playerid, cmdtext[Cout]));
		else return (!cmdtext[Cout]) ? CallLocalFunction(Func, "is", playerid, "\1") :  CallLocalFunction(Func, "is", playerid, cmdtext[Cout]);
	}
	else return CallLocalFunction("F_OnPlayerCommandText", "is", playerid, cmdtext);
#else
	return (cmdtext[Cout] == 0) ? CallLocalFunction(Func, "is", playerid, "\1") :  CallLocalFunction(Func, "is", playerid, cmdtext[Cout]);
#endif
}

forward F_OnGameModeInit();
forward OnPlayerCommandCall(playerid, cmdtext[]);
forward F_OnPlayerCommandText(playerid, cmdtext[]);
forward OnPlayerCommandFinish(playerid, cmdtext[], success);

#if !defined isnull
	#define isnull(%0) ((!(%0[0])) || (((%0[0]) == '\1') && (!(%0[1]))))
#endif


#define COMMAND:%0(%1,%2)    \
		forward _%0(%1,%2);  \
		public _%0(%1,%2)

#define cmd::%0(%1,%2) _%0(%1,%2)
#define CMD:%0(%1,%2) COMMAND:%0(%1,%2)


#if !defined CASUAL
	#if defined _ALS_OnGameModeInit
		#undef OnGameModeInit
	#else
		#define _ALS_OnGameModeInit
	#endif
	#define OnGameModeInit F_OnGameModeInit
#endif

#if defined _ALS_OnPlayerCommandText
    #undef OnPlayerCommandText
#else
    #define _ALS_OnPlayerCommandText
#endif
#define OnPlayerCommandText F_OnPlayerCommandText
