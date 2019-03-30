/*

		T*R*A*N*Q*U*L*I*T*Y - RPG SIMULATION.
		
		PERSIKIDA. 2019 Mar.

*/

#if !defined _samp_included
    #define FIXES_ServerVarMsg  0
	#define FIX_file_inc 		0
	#tryinclude a_samp
	#tryinclude fixes
		#if !defined _samp_included
		    #error Error: Include: a_samp
		#endif
#endif

#if !defined GetConsoleVarAsString
	#error "You need 0.3.7 R2-1 to compile this GameMode."
#endif

// ... OWN DEVELOPMENTS ....

#tryinclude TRNQLT\Pawn.CMD
#tryinclude TRNQLT\Gvar
#tryinclude TRNQLT\Vectoral_Vector
#tryinclude TRNQLT\Sscanf
#tryinclude TRNQLT\Streamer
#tryinclude TRNQLT\Mxdate
#tryinclude TRNQLT\Mysql
#tryinclude TRNQLT\Foreach

#tryinclude DVLPMNTS\Security
#tryinclude DVLPMNTS\Memory


#define TAXI_PRICEROUT		0.6
#define TAXI_PRICERENT		500

#define DIALOG_BASE_X   	75.0
#define DIALOG_BASE_Y   	130.0
#define DIALOG_WIDTH    	550.0
#define DIALOG_HEIGHT   	180.0
#define SPRITE_DIM_X     	30.0
#define SPRITE_DIM_Y     	35.0
#define INVNUMBERS 			79
#define TOTAL_ITEMS         INVNUMBERS
#define SELECTION_ITEMS 	84
#define ITEMS_PER_LINE  	14

#define NameServer 			"Tranquility Simulation"

#pragma dynamic             8192

#define SECOND_FLOOD        4
#define REPORT_FLOOD		60

#define d_Box               0
#define d_Input             1
#define d_List              2
#define d_Password          3
#define d_TabList           DIALOG_STYLE_TABLIST
#define d_Headers           DIALOG_STYLE_TABLIST_HEADERS

#define D_NULL 				0
#define D_REG				1
#define D_LOG               7
#define D_HOUSE             8
#define D_MENU              25
#define D_ADMIN             80
#define D_ADD               100
#define D_GPS               150
#define D_ERROR             250
#define D_CMDHELP           260
#define D_ATM               285
#define D_ACTION            325
#define D_STATS             380
#define D_EXTRA             385
#define D_DINFO             400
#define D_ITEMS             450
#define D_AUTO              550
#define D_DRIVE_EXAM        570
#define D_BUSINESS          585
#define D_NEWS              600
#define D_WORK              633
#define D_MOBILE            700
#define D_SMI               800
#define D_BANK              830
#define D_FRACTION          900
#define D_BUY               1000
#define D_RULER             1300
#define D_MONEYBACK         1350
#define D_TD				1500
#define D_PARK              1700
#define D_AUG               1800
#define D_AMBIENT           1900
#define D_VAMPIRIC          2000
#define D_FRACTI            2100
#define D_LEADER            2200
#define D_REFACTORE         2300
#define D_GUILD             2350
#define D_INDEV             2500

#define COLOR_TURQUOISE     0x00FFFFAA
#define COLOR_BOX           0x00000050
#define	COLOR_GREY 			0xAFAFAFAA
#define COLOR_GREEN 		0x33AA33AA
#define COLOR_RED 			0xAA3333AA
#define COLOR_PAYCHEC       0xa4cd00AA
#define COLOR_BLACK 		0x000000AA
#define COLOR_WHITE 		0xFFFFFFAA
#define COLOR_YELLOW        0xFFEE00FF
#define COLOR_PLAYER        0xFFFFFF10
#define COLOR_ORANGE 		0xFF9900AA
#define COLOR_PURPLE 		0xC2A2DAAA
#define COLOR_GRELIN        0x317CDFAA
#define COLOR_CREAM         0xFFFEBFFF
#define COLOR_LIGHTRED 		0xFF6347AA
#define COLOR_BLUE          0x33CCFFAA
#define COLOR_AQUA      	0x7FC0E3FF

#define FREEZE_TIME         500

#define MAX_DOORS           10
#define ELEV_MOVEDOOR_SPEED 10.0
#define ELEV_MOVECAGE_SPEED 5.0
#define DOOR_MOVE_SPEED     10.0
#define INVALID_DOOR_ID     -1

#define MAX_GPS             200
#define MAX_ENTERS          15
#define MAX_BIZZ            15
#define MAX_BAUTO           15
#define MAX_ATM             15
#define MAX_HOUSE           1000
#define MAX_FRACTION        20
#define MAX_TAXI            3
#define MAX_Q               512
#define MAX_F               192
#define MAX_SS              150
#define MAX_C               360
#define MAX_CC              100
#define MAX_V               64
#define MAX_T               64
#define MAX_S               2048

#define POS_X 				1821.3362
#define POS_Y 				-1311.8143
#define POS_Z 				28.9101

#define AH_X                1502.6322
#define AH_Y                1306.2178
#define AH_Z                1093.8641

#define LoggedTimeOver 		"[!] Время на авторизацию ограничено, для выхода из игры введите: /q(uit)"
#define PlayerEscapeReg 	"[!] Не следует нажимать ESC во время регистрации. Для выхода из игры введите: /q(uit)"
#define PlayerNeedLogged 	"[!] Необходимо авторизироваться. Для выхода из игры введите: /q(uit)"
#define NotTruePassword 	"[!] Неверный пароль для выхода из игры введите: /q(uit)"
#define PlayerRepFlood		"[!] Связываться с администрацией сервера возможно только раз в 1 минуту."
#define PlayerIsNotInCar 	"[!] Вы должны находиться в транспорте."
#define CarHasNoFuel 		"[!] В транспорте закончилось топливо."
#define NotEnoughMoney      "[!] Недостаточно средств."
#define PlayerNotInHome 	"[!] Рядом нет дома."
#define PlayerIsNotInHome 	"[!] Вы не находитесь в доме."
#define NoFlood 			"[!] Пожалуйста, прекратите флуд."

#define HOST    			"localhost"
#define USER    			"root"
#define BASE      			"trnqlt"
#define PASS    			"W3wvqis3Sz"

#define TABLE_ACCOUNT       "accounts"
#define TABLE_ENTERS        "enters"
#define TABLE_BIZZ          "organizations"
#define TABLE_GPS           "gps"
#define TABLE_CARS          "cars"
#define TABLE_ATM           "atm"
#define TABLE_HOUSE         "house"
#define TABLE_FACTIONS      "factions"

#define GetName(%0) cDataInfo[%0][Name]

#define PRESSED(%0) (((newkeys & (%0)) == (%0)) && ((oldkeys & (%0)) != (%0)))

#define vFractions(%0)      CarsCreated[%0]

#define OwnedVeh(%0)        VehCreated[%0]

#define Round(%0) \
		for(new d, x = cvector_g_size(FOR_SERVERS); d != x; %0 &=0, %0 +- cvector_g_get(FOR_SERVERS, d++))

#define void%0(%1)     \
        forward%0(%1); \
	    public%0(%1)
	    
#define SendAdmin(%0,%1,%2)  format(form, 148, %1,%2) && SendAdminMessage(%0, form)
#define SendMes(%0,%1,%2,%3) format(form, 148, %2,%3) && SendClientMessage(%0, %1, form)

#define KickFromServer(%0)	SetTimerEx("Quit", GetPlayerPing(%0)*2, false, "i", %0)

// Global Position System

new
	ok[MAX_PLAYERS],
	pNavState[MAX_PLAYERS],
	pNavID[MAX_PLAYERS],
	pNavTimer[MAX_PLAYERS],
	PlayerText:NAVpTD[MAX_PLAYERS],
	Text:NAVTD[2]
;

enum
{
    ACTOR_ENTRY_GUARD,
    ACTOR_STAIRWAY_GUARD_1,
    ACTOR_STAIRWAY_GUARD_2,
    ACTOR_RECEPTION_GUARD_1,
    ACTOR_RECEPTION_GUARD_2,
    ACTOR_MECHANIC,
    ACTOR_HOMELESS,
    ACTOR_CAMERAMAN,
    ACTOR_VIP,
    ACTOR_CHEF,
    ACTOR_BARTENDER,
    ACTOR_FOREMAN,
    ACTOR_RECEPTIONIST,
    ACTOR_IT_SUPPORT,
    ACTOR_STYLIST,
    MAX_BUNKER_ACTORS
}

enum
{
    ELEVSTATE_LOADING,  // elevator not initiated / loading
    ELEVSTATE_CLOSE,    // elevator close
    ELEVSTATE_OPEN,     // elevator open
    ELEVSTATE_OPENING,  // elevator opening
    ELEVSTATE_CLOSING,  // elevator closing
    ELEVSTATE_MOVING_U, // elevator moving up
    ELEVSTATE_MOVING_D, // elevator moving down
}

enum
{
    ELEVDOOR_INT_L, // left door (seen from outside of the elevator)
    ELEVDOOR_INT_R, // right door (seen from outside of the elevator)
    MAX_INT_ELEVDOORS
}

enum
{
    ELEVFLOOR_T, // top floor
    ELEVFLOOR_B, // bottom floor
    MAX_ELEVFLOORS
}

enum
{
    DOORSTATE_CLOSE,
    DOORSTATE_OPENING,
    DOORSTATE_OPEN,
    DOORSTATE_CLOSING
}

enum
{
	TYPE_WITHOUT_FREEZE = 0,
	TYPE_PLAYER_FREEZE = 1,
	TYPE_SHOW_TD = 2
}

enum e_ElevData
{
           e_ElevState,
           e_ElevFloor,
           e_ElevObj,
           e_ElevDynArea       [ MAX_ELEVFLOORS ],
           e_ElevIntDoorObj    [ MAX_INT_ELEVDOORS ],
           e_ElevExtDoorDynObj [ MAX_ELEVFLOORS ],
           e_ElevKeypadObj
}

enum e_DoorData
{
    Float: e_DoorClosedZ,
           e_DoorDynObj,
           e_DoorDynArea,
           e_DoorState
}

new g_DynamicObject[659], g_Vehicle[2],
          g_VehicleObject[2],
          g_DynamicActor[MAX_BUNKER_ACTORS],
          g_ElevData[e_ElevData],
          g_DoorData[MAX_DOORS][e_DoorData],
          g_DoorsInitiated,
          g_EntryArea,
          g_ExitArea,
    bool:g_EntryExitSkip[MAX_PLAYERS char]
;

enum TRANQUILIZATOR_DATA
{
	Float:ObjPos[3],
	ObjID,
	ObjData
};
new PlayerInv[MAX_PLAYERS][INVNUMBERS];

new InvObjects[INVNUMBERS] =
{
	1581,
	2663,
	1666,
	1546,
	2806,
	2804,
	2856,
	2768,
	2814,
	2769,
	349,
	348,
	355,
	356,
	358,
	352,
	353,
	372,
	2040,//
	2040,
	2040,
	2040,
	2040,
	2040,
	2040,
	2040,//
	336,
	339,
	337,
	335,
	334,
	1575,
	1644,
	1578,
	1580,
	328,
	2709,
	1579,
	1242,
	1085,
	2969,
	3013,
	1650,
	1650,
	1509,
	1509,
	2386,
	2386,
	2386,
	3026,
	371,
	19167,
	18875,
	330,
	2710,
	327,
	841,
	2859,
	1455,
	346,
	347,
	350,
	359,
	2040,
	2040,
	2040,
	2040,
	2386,
	2386,
	1310,
	1310,
	357,
	351,
	342,
	344,
	2040,
	2040,
	2926,
	1279
};

enum SUB_DATA
{
	iD_sub[64],
	iD_text[512]
};

enum CHARACTERS_DATA
{
	IP[16],
	pLic[5],
	pGun[13],
	pMail[64],
	pLics[16],
	pGuns[40],
	pAmmo[13],
	pAmmos[160],
	pNation[32],
	pSkills[40],
	pGunSkill[7],
	pRegData[16],
	pPassword[32],
	pAdmPassword[32],
	Name[MAX_PLAYER_NAME],
	pSpawns,
	pWanted,
	pWantedTime,
	pMarried[MAX_PLAYER_NAME],
	pJobAmounts[30],
	pJobAmount[3],
	Float:pPos[4],
	pCrimes,
   	pWantedWho,
   	pWantedReason,
   	pGPS,
   	pPack,
   	pSlots,
};
new cDataInfo[MAX_PLAYERS][CHARACTERS_DATA];

enum bzInfo
{
	id,
	Float:bEntrx,
	Float:bEntry,
	Float:bEntrz,
	Float:bExitx,
	Float:bExity,
	Float:bExitz,
	Float:bMenux,
	Float:bMenuy,
	Float:bMenuz,
	bOwner[MAX_PLAYER_NAME],
	bPrice,
	bMoney,
	bType,
	bLic,
	bInt,
	bVW,
	bLock,
	bEnter,
	bMIcon,
	bIcon,
	bPickup,
	bPickupExit,
	bName[MAX_PLAYER_NAME],
	bProduct,
	bTill,
	bMenu,
	bLockTime
};

new BizzInfo[MAX_BIZZ][bzInfo],BizzPay[MAX_BIZZ];
new Text3D:LABELBIZZ[MAX_BIZZ];

enum FACTIONS_DATA
{
	fID,
	fOwner,
	fName,
	Float:fsX,
	Float:fsY,
	Float:fsZ,
	fsInt,
	fRank[10],
	fSkin[5],
	fSalary
};
new FactInfo[MAX_FRACTION][FACTIONS_DATA];

enum HOUSE_DATA
{
	hID,
	hLock,
	hPrice,
	hMIcon,
	hCash,
	hInt[2],
	hVirt,
	hProd[3],
	hPickup[2],
	hOwner[32],
	hDiscript[16],
	Float:hCar[4],
	Float:hEntr[3],
	Float:hExit[3]
};
new HouseInfo[MAX_HOUSE][HOUSE_DATA];


enum ATM_DATA { id, Float:aX, Float:aY, Float:aZ, Float:arZ };
new ATMInfo[MAX_ATM][ATM_DATA], ATM[MAX_ATM];
new Text3D: LABELATM[MAX_ATM];

enum tInfo
{
	tModel,
	Float:tPosX,
	Float:tPosY,
	Float:tPosZ,
	Float:tPosA
};

new t_Info[MAX_TAXI][tInfo] = {
{420, 1736.6744, -1859.7969, 13.2723, 270.0},
{420, 1745.0928, -1859.7969, 13.2709, 270.0},
{420, 1762.7397, -1859.7969, 13.2713, 270.0}
};

enum SAZONE_MAIN
{
	SAZONE_NAME[32],
	Float:SAZONE_AREA[6]
};
new gZoneInfo[365][SAZONE_MAIN] = {
{"The Big Ear",	                {-410.00,1403.30,-3.00,-137.90,1681.20,200.00}},
{"Aldea Malvada",               {-1372.10,2498.50,0.00,-1277.50,2615.30,200.00}},
{"Angel Pine",                  {-2324.90,-2584.20,-6.10,-1964.20,-2212.10,200.00}},
{"Arco del Oeste",              {-901.10,2221.80,0.00,-592.00,2571.90,200.00}},
{"Avispa Country Club",         {-2646.40,-355.40,0.00,-2270.00,-222.50,200.00}},
{"Avispa Country Club",         {-2831.80,-430.20,-6.10,-2646.40,-222.50,200.00}},
{"Avispa Country Club",         {-2361.50,-417.10,0.00,-2270.00,-355.40,200.00}},
{"Avispa Country Club",         {-2667.80,-302.10,-28.80,-2646.40,-262.30,71.10}},
{"Avispa Country Club",         {-2470.00,-355.40,0.00,-2270.00,-318.40,46.10}},
{"Avispa Country Club",         {-2550.00,-355.40,0.00,-2470.00,-318.40,39.70}},
{"Back o Beyond",               {-1166.90,-2641.10,0.00,-321.70,-1856.00,200.00}},
{"Battery Point",               {-2741.00,1268.40,-4.50,-2533.00,1490.40,200.00}},
{"Bayside",                     {-2741.00,2175.10,0.00,-2353.10,2722.70,200.00}},
{"Bayside Marina",              {-2353.10,2275.70,0.00,-2153.10,2475.70,200.00}},
{"Beacon Hill",                 {-399.60,-1075.50,-1.40,-319.00,-977.50,198.50}},
{"Blackfield",                  {964.30,1203.20,-89.00,1197.30,1403.20,110.90}},
{"Blackfield",                  {964.30,1403.20,-89.00,1197.30,1726.20,110.90}},
{"Blackfield Chapel",           {1375.60,596.30,-89.00,1558.00,823.20,110.90}},
{"Blackfield Chapel",           {1325.60,596.30,-89.00,1375.60,795.00,110.90}},
{"Blackfield Intersection",     {1197.30,1044.60,-89.00,1277.00,1163.30,110.90}},
{"Blackfield Intersection",     {1166.50,795.00,-89.00,1375.60,1044.60,110.90}},
{"Blackfield Intersection",     {1277.00,1044.60,-89.00,1315.30,1087.60,110.90}},
{"Blackfield Intersection",     {1375.60,823.20,-89.00,1457.30,919.40,110.90}},
{"Blueberry",                   {104.50,-220.10,2.30,349.60,152.20,200.00}},
{"Blueberry",                   {19.60,-404.10,3.80,349.60,-220.10,200.00}},
{"Blueberry Acres",             {-319.60,-220.10,0.00,104.50,293.30,200.00}},
{"Caligula's Palace",           {2087.30,1543.20,-89.00,2437.30,1703.20,110.90}},
{"Caligula's Palace",           {2137.40,1703.20,-89.00,2437.30,1783.20,110.90}},
{"Calton Heights",              {-2274.10,744.10,-6.10,-1982.30,1358.90,200.00}},
{"Chinatown",                   {-2274.10,578.30,-7.60,-2078.60,744.10,200.00}},
{"City Hall",                   {-2867.80,277.40,-9.10,-2593.40,458.40,200.00}},
{"Come-A-Lot",                  {2087.30,943.20,-89.00,2623.10,1203.20,110.90}},
{"Commerce",                    {1323.90,-1842.20,-89.00,1701.90,-1722.20,110.90}},
{"Commerce",                    {1323.90,-1722.20,-89.00,1440.90,-1577.50,110.90}},
{"Commerce",                    {1370.80,-1577.50,-89.00,1463.90,-1384.90,110.90}},
{"Commerce",                    {1463.90,-1577.50,-89.00,1667.90,-1430.80,110.90}},
{"Commerce",                    {1583.50,-1722.20,-89.00,1758.90,-1577.50,110.90}},
{"Commerce",                    {1667.90,-1577.50,-89.00,1812.60,-1430.80,110.90}},
{"Conference Center",           {1046.10,-1804.20,-89.00,1323.90,-1722.20,110.90}},
{"Conference Center",           {1073.20,-1842.20,-89.00,1323.90,-1804.20,110.90}},
{"Cranberry Station",           {-2007.80,56.30,0.00,-1922.00,224.70,100.00}},
{"Creek",                       {2749.90,1937.20,-89.00,2921.60,2669.70,110.90}},
{"Dillimore",                   {580.70,-674.80,-9.50,861.00,-404.70,200.00}},
{"Doherty",                     {-2270.00,-324.10,-0.00,-1794.90,-222.50,200.00}},
{"Doherty",                     {-2173.00,-222.50,-0.00,-1794.90,265.20,200.00}},
{"Downtown",                    {-1982.30,744.10,-6.10,-1871.70,1274.20,200.00}},
{"Downtown",                    {-1871.70,1176.40,-4.50,-1620.30,1274.20,200.00}},
{"Downtown",                    {-1700.00,744.20,-6.10,-1580.00,1176.50,200.00}},
{"Downtown",                    {-1580.00,744.20,-6.10,-1499.80,1025.90,200.00}},
{"Downtown",                    {-2078.60,578.30,-7.60,-1499.80,744.20,200.00}},
{"Downtown",                    {-1993.20,265.20,-9.10,-1794.90,578.30,200.00}},
{"Downtown Los Santos",         {1463.90,-1430.80,-89.00,1724.70,-1290.80,110.90}},
{"Downtown Los Santos",         {1724.70,-1430.80,-89.00,1812.60,-1250.90,110.90}},
{"Downtown Los Santos",         {1463.90,-1290.80,-89.00,1724.70,-1150.80,110.90}},
{"Downtown Los Santos",         {1370.80,-1384.90,-89.00,1463.90,-1170.80,110.90}},
{"Downtown Los Santos",         {1724.70,-1250.90,-89.00,1812.60,-1150.80,110.90}},
{"Downtown Los Santos",         {1370.80,-1170.80,-89.00,1463.90,-1130.80,110.90}},
{"Downtown Los Santos",         {1378.30,-1130.80,-89.00,1463.90,-1026.30,110.90}},
{"Downtown Los Santos",         {1391.00,-1026.30,-89.00,1463.90,-926.90,110.90}},
{"Downtown Los Santos",         {1507.50,-1385.20,110.90,1582.50,-1325.30,335.90}},
{"East Beach",                  {2632.80,-1852.80,-89.00,2959.30,-1668.10,110.90}},
{"East Beach",                  {2632.80,-1668.10,-89.00,2747.70,-1393.40,110.90}},
{"East Beach",                  {2747.70,-1668.10,-89.00,2959.30,-1498.60,110.90}},
{"East Beach",                  {2747.70,-1498.60,-89.00,2959.30,-1120.00,110.90}},
{"East Los Santos",             {2421.00,-1628.50,-89.00,2632.80,-1454.30,110.90}},
{"East Los Santos",             {2222.50,-1628.50,-89.00,2421.00,-1494.00,110.90}},
{"East Los Santos",             {2266.20,-1494.00,-89.00,2381.60,-1372.00,110.90}},
{"East Los Santos",             {2381.60,-1494.00,-89.00,2421.00,-1454.30,110.90}},
{"East Los Santos",             {2281.40,-1372.00,-89.00,2381.60,-1135.00,110.90}},
{"East Los Santos",             {2381.60,-1454.30,-89.00,2462.10,-1135.00,110.90}},
{"East Los Santos",             {2462.10,-1454.30,-89.00,2581.70,-1135.00,110.90}},
{"Easter Basin",                {-1794.90,249.90,-9.10,-1242.90,578.30,200.00}},
{"Easter Basin",                {-1794.90,-50.00,-0.00,-1499.80,249.90,200.00}},
{"Easter Bay Airport",          {-1499.80,-50.00,-0.00,-1242.90,249.90,200.00}},
{"Easter Bay Airport",          {-1794.90,-730.10,-3.00,-1213.90,-50.00,200.00}},
{"Easter Bay Airport",          {-1213.90,-730.10,0.00,-1132.80,-50.00,200.00}},
{"Easter Bay Airport",          {-1242.90,-50.00,0.00,-1213.90,578.30,200.00}},
{"Easter Bay Airport",          {-1213.90,-50.00,-4.50,-947.90,578.30,200.00}},
{"Easter Bay Airport",          {-1315.40,-405.30,15.40,-1264.40,-209.50,25.40}},
{"Easter Bay Airport",          {-1354.30,-287.30,15.40,-1315.40,-209.50,25.40}},
{"Easter Bay Airport",          {-1490.30,-209.50,15.40,-1264.40,-148.30,25.40}},
{"Easter Bay Chemicals",        {-1132.80,-768.00,0.00,-956.40,-578.10,200.00}},
{"Easter Bay Chemicals",        {-1132.80,-787.30,0.00,-956.40,-768.00,200.00}},
{"El Castillo del Diablo",      {-464.50,2217.60,0.00,-208.50,2580.30,200.00}},
{"El Castillo del Diablo",      {-208.50,2123.00,-7.60,114.00,2337.10,200.00}},
{"El Castillo del Diablo",      {-208.50,2337.10,0.00,8.40,2487.10,200.00}},
{"El Corona",                   {1812.60,-2179.20,-89.00,1970.60,-1852.80,110.90}},
{"El Corona",                   {1692.60,-2179.20,-89.00,1812.60,-1842.20,110.90}},
{"El Quebrados",                {-1645.20,2498.50,0.00,-1372.10,2777.80,200.00}},
{"Esplanade East",              {-1620.30,1176.50,-4.50,-1580.00,1274.20,200.00}},
{"Esplanade East",              {-1580.00,1025.90,-6.10,-1499.80,1274.20,200.00}},
{"Esplanade East",              {-1499.80,578.30,-79.60,-1339.80,1274.20,20.30}},
{"Esplanade North",             {-2533.00,1358.90,-4.50,-1996.60,1501.20,200.00}},
{"Esplanade North",             {-1996.60,1358.90,-4.50,-1524.20,1592.50,200.00}},
{"Esplanade North",             {-1982.30,1274.20,-4.50,-1524.20,1358.90,200.00}},
{"Fallen Tree",                 {-792.20,-698.50,-5.30,-452.40,-380.00,200.00}},
{"Fallow Bridge",               {434.30,366.50,0.00,603.00,555.60,200.00}},
{"Fern Ridge",                  {508.10,-139.20,0.00,1306.60,119.50,200.00}},
{"Financial",                   {-1871.70,744.10,-6.10,-1701.30,1176.40,300.00}},
{"Fisher's Lagoon",             {1916.90,-233.30,-100.00,2131.70,13.80,200.00}},
{"Flint Intersection",          {-187.70,-1596.70,-89.00,17.00,-1276.60,110.90}},
{"Flint Range",                 {-594.10,-1648.50,0.00,-187.70,-1276.60,200.00}},
{"Fort Carson",                 {-376.20,826.30,-3.00,123.70,1220.40,200.00}},
{"Foster Valley",               {-2270.00,-430.20,-0.00,-2178.60,-324.10,200.00}},
{"Foster Valley",               {-2178.60,-599.80,-0.00,-1794.90,-324.10,200.00}},
{"Foster Valley",               {-2178.60,-1115.50,0.00,-1794.90,-599.80,200.00}},
{"Foster Valley",               {-2178.60,-1250.90,0.00,-1794.90,-1115.50,200.00}},
{"Frederick Bridge",            {2759.20,296.50,0.00,2774.20,594.70,200.00}},
{"Gant Bridge",                 {-2741.40,1659.60,-6.10,-2616.40,2175.10,200.00}},
{"Gant Bridge",                 {-2741.00,1490.40,-6.10,-2616.40,1659.60,200.00}},
{"Ganton",                      {2222.50,-1852.80,-89.00,2632.80,-1722.30,110.90}},
{"Ganton",                      {2222.50,-1722.30,-89.00,2632.80,-1628.50,110.90}},
{"Garcia",                      {-2411.20,-222.50,-0.00,-2173.00,265.20,200.00}},
{"Garcia",                      {-2395.10,-222.50,-5.30,-2354.00,-204.70,200.00}},
{"Garver Bridge",               {-1339.80,828.10,-89.00,-1213.90,1057.00,110.90}},
{"Garver Bridge",               {-1213.90,950.00,-89.00,-1087.90,1178.90,110.90}},
{"Garver Bridge",               {-1499.80,696.40,-179.60,-1339.80,925.30,20.30}},
{"Glen Park",                   {1812.60,-1449.60,-89.00,1996.90,-1350.70,110.90}},
{"Glen Park",                   {1812.60,-1100.80,-89.00,1994.30,-973.30,110.90}},
{"Glen Park",                   {1812.60,-1350.70,-89.00,2056.80,-1100.80,110.90}},
{"Green Palms",                 {176.50,1305.40,-3.00,338.60,1520.70,200.00}},
{"Greenglass College",          {964.30,1044.60,-89.00,1197.30,1203.20,110.90}},
{"Greenglass College",          {964.30,930.80,-89.00,1166.50,1044.60,110.90}},
{"Hampton Barns",               {603.00,264.30,0.00,761.90,366.50,200.00}},
{"Hankypanky Point",            {2576.90,62.10,0.00,2759.20,385.50,200.00}},
{"Harry Gold Parkway",          {1777.30,863.20,-89.00,1817.30,2342.80,110.90}},
{"Hashbury",                    {-2593.40,-222.50,-0.00,-2411.20,54.70,200.00}},
{"Hilltop Farm",                {967.30,-450.30,-3.00,1176.70,-217.90,200.00}},
{"Hunter Quarry",               {337.20,710.80,-115.20,860.50,1031.70,203.70}},
{"Idlewood",                    {1812.60,-1852.80,-89.00,1971.60,-1742.30,110.90}},
{"Idlewood",                    {1812.60,-1742.30,-89.00,1951.60,-1602.30,110.90}},
{"Idlewood",                    {1951.60,-1742.30,-89.00,2124.60,-1602.30,110.90}},
{"Idlewood",                    {1812.60,-1602.30,-89.00,2124.60,-1449.60,110.90}},
{"Idlewood",                    {2124.60,-1742.30,-89.00,2222.50,-1494.00,110.90}},
{"Idlewood",                    {1971.60,-1852.80,-89.00,2222.50,-1742.30,110.90}},
{"Jefferson",                   {1996.90,-1449.60,-89.00,2056.80,-1350.70,110.90}},
{"Jefferson",                   {2124.60,-1494.00,-89.00,2266.20,-1449.60,110.90}},
{"Jefferson",                   {2056.80,-1372.00,-89.00,2281.40,-1210.70,110.90}},
{"Jefferson",                   {2056.80,-1210.70,-89.00,2185.30,-1126.30,110.90}},
{"Jefferson",                   {2185.30,-1210.70,-89.00,2281.40,-1154.50,110.90}},
{"Jefferson",                   {2056.80,-1449.60,-89.00,2266.20,-1372.00,110.90}},
{"Julius Thruway East",         {2623.10,943.20,-89.00,2749.90,1055.90,110.90}},
{"Julius Thruway East",         {2685.10,1055.90,-89.00,2749.90,2626.50,110.90}},
{"Julius Thruway East",         {2536.40,2442.50,-89.00,2685.10,2542.50,110.90}},
{"Julius Thruway East",         {2625.10,2202.70,-89.00,2685.10,2442.50,110.90}},
{"Julius Thruway North",        {2498.20,2542.50,-89.00,2685.10,2626.50,110.90}},
{"Julius Thruway North",        {2237.40,2542.50,-89.00,2498.20,2663.10,110.90}},
{"Julius Thruway North",        {2121.40,2508.20,-89.00,2237.40,2663.10,110.90}},
{"Julius Thruway North",        {1938.80,2508.20,-89.00,2121.40,2624.20,110.90}},
{"Julius Thruway North",        {1534.50,2433.20,-89.00,1848.40,2583.20,110.90}},
{"Julius Thruway North",        {1848.40,2478.40,-89.00,1938.80,2553.40,110.90}},
{"Julius Thruway North",        {1704.50,2342.80,-89.00,1848.40,2433.20,110.90}},
{"Julius Thruway North",        {1377.30,2433.20,-89.00,1534.50,2507.20,110.90}},
{"Julius Thruway South",        {1457.30,823.20,-89.00,2377.30,863.20,110.90}},
{"Julius Thruway South",        {2377.30,788.80,-89.00,2537.30,897.90,110.90}},
{"Julius Thruway West",         {1197.30,1163.30,-89.00,1236.60,2243.20,110.90}},
{"Julius Thruway West",         {1236.60,2142.80,-89.00,1297.40,2243.20,110.90}},
{"Juniper Hill",                {-2533.00,578.30,-7.60,-2274.10,968.30,200.00}},
{"Juniper Hollow",              {-2533.00,968.30,-6.10,-2274.10,1358.90,200.00}},
{"K.A.C.C. Military Fuels",     {2498.20,2626.50,-89.00,2749.90,2861.50,110.90}},
{"Kincaid Bridge",              {-1339.80,599.20,-89.00,-1213.90,828.10,110.90}},
{"Kincaid Bridge",              {-1213.90,721.10,-89.00,-1087.90,950.00,110.90}},
{"Kincaid Bridge",              {-1087.90,855.30,-89.00,-961.90,986.20,110.90}},
{"King's",                      {-2329.30,458.40,-7.60,-1993.20,578.30,200.00}},
{"King's",                      {-2411.20,265.20,-9.10,-1993.20,373.50,200.00}},
{"King's",                      {-2253.50,373.50,-9.10,-1993.20,458.40,200.00}},
{"LVA Freight Depot",           {1457.30,863.20,-89.00,1777.40,1143.20,110.90}},
{"LVA Freight Depot",           {1375.60,919.40,-89.00,1457.30,1203.20,110.90}},
{"LVA Freight Depot",           {1277.00,1087.60,-89.00,1375.60,1203.20,110.90}},
{"LVA Freight Depot",           {1315.30,1044.60,-89.00,1375.60,1087.60,110.90}},
{"LVA Freight Depot",           {1236.60,1163.40,-89.00,1277.00,1203.20,110.90}},
{"Las Barrancas",               {-926.10,1398.70,-3.00,-719.20,1634.60,200.00}},
{"Las Brujas",                  {-365.10,2123.00,-3.00,-208.50,2217.60,200.00}},
{"Las Colinas",                 {1994.30,-1100.80,-89.00,2056.80,-920.80,110.90}},
{"Las Colinas",                 {2056.80,-1126.30,-89.00,2126.80,-920.80,110.90}},
{"Las Colinas",                 {2185.30,-1154.50,-89.00,2281.40,-934.40,110.90}},
{"Las Colinas",                 {2126.80,-1126.30,-89.00,2185.30,-934.40,110.90}},
{"Las Colinas",                 {2747.70,-1120.00,-89.00,2959.30,-945.00,110.90}},
{"Las Colinas",                 {2632.70,-1135.00,-89.00,2747.70,-945.00,110.90}},
{"Las Colinas",                 {2281.40,-1135.00,-89.00,2632.70,-945.00,110.90}},
{"Las Payasadas",               {-354.30,2580.30,2.00,-133.60,2816.80,200.00}},
{"Las Venturas Airport",        {1236.60,1203.20,-89.00,1457.30,1883.10,110.90}},
{"Las Venturas Airport",        {1457.30,1203.20,-89.00,1777.30,1883.10,110.90}},
{"Las Venturas Airport",        {1457.30,1143.20,-89.00,1777.40,1203.20,110.90}},
{"Las Venturas Airport",        {1515.80,1586.40,-12.50,1729.90,1714.50,87.50}},
{"Last Dime Motel",             {1823.00,596.30,-89.00,1997.20,823.20,110.90}},
{"Leafy Hollow",                {-1166.90,-1856.00,0.00,-815.60,-1602.00,200.00}},
{"Liberty City",                {-1000.00,400.00,1300.00,-700.00,600.00,1400.00}},
{"Lil' Probe Inn",              {-90.20,1286.80,-3.00,153.80,1554.10,200.00}},
{"Linden Side",                 {2749.90,943.20,-89.00,2923.30,1198.90,110.90}},
{"Linden Station",              {2749.90,1198.90,-89.00,2923.30,1548.90,110.90}},
{"Linden Station",              {2811.20,1229.50,-39.50,2861.20,1407.50,60.40}},
{"Little Mexico",               {1701.90,-1842.20,-89.00,1812.60,-1722.20,110.90}},
{"Little Mexico",               {1758.90,-1722.20,-89.00,1812.60,-1577.50,110.90}},
{"Los Flores",                  {2581.70,-1454.30,-89.00,2632.80,-1393.40,110.90}},
{"Los Flores",                  {2581.70,-1393.40,-89.00,2747.70,-1135.00,110.90}},
{"Los Santos International",    {1249.60,-2394.30,-89.00,1852.00,-2179.20,110.90}},
{"Los Santos International",    {1852.00,-2394.30,-89.00,2089.00,-2179.20,110.90}},
{"Los Santos International",    {1382.70,-2730.80,-89.00,2201.80,-2394.30,110.90}},
{"Los Santos International",    {1974.60,-2394.30,-39.00,2089.00,-2256.50,60.90}},
{"Los Santos International",    {1400.90,-2669.20,-39.00,2189.80,-2597.20,60.90}},
{"Los Santos International",    {2051.60,-2597.20,-39.00,2152.40,-2394.30,60.90}},
{"Marina",                      {647.70,-1804.20,-89.00,851.40,-1577.50,110.90}},
{"Marina",                      {647.70,-1577.50,-89.00,807.90,-1416.20,110.90}},
{"Marina",                      {807.90,-1577.50,-89.00,926.90,-1416.20,110.90}},
{"Market",                      {787.40,-1416.20,-89.00,1072.60,-1310.20,110.90}},
{"Market",                      {952.60,-1310.20,-89.00,1072.60,-1130.80,110.90}},
{"Market",                      {1072.60,-1416.20,-89.00,1370.80,-1130.80,110.90}},
{"Market",                      {926.90,-1577.50,-89.00,1370.80,-1416.20,110.90}},
{"Market Station",              {787.40,-1410.90,-34.10,866.00,-1310.20,65.80}},
{"Martin Bridge",               {-222.10,293.30,0.00,-122.10,476.40,200.00}},
{"Missionary Hill",             {-2994.40,-811.20,0.00,-2178.60,-430.20,200.00}},
{"Montgomery",                  {1119.50,119.50,-3.00,1451.40,493.30,200.00}},
{"Montgomery",                  {1451.40,347.40,-6.10,1582.40,420.80,200.00}},
{"Montgomery Intersection",     {1546.60,208.10,0.00,1745.80,347.40,200.00}},
{"Montgomery Intersection",     {1582.40,347.40,0.00,1664.60,401.70,200.00}},
{"Mulholland",                  {1414.00,-768.00,-89.00,1667.60,-452.40,110.90}},
{"Mulholland",                  {1281.10,-452.40,-89.00,1641.10,-290.90,110.90}},
{"Mulholland",                  {1269.10,-768.00,-89.00,1414.00,-452.40,110.90}},
{"Mulholland",                  {1357.00,-926.90,-89.00,1463.90,-768.00,110.90}},
{"Mulholland",                  {1318.10,-910.10,-89.00,1357.00,-768.00,110.90}},
{"Mulholland",                  {1169.10,-910.10,-89.00,1318.10,-768.00,110.90}},
{"Mulholland",                  {768.60,-954.60,-89.00,952.60,-860.60,110.90}},
{"Mulholland",                  {687.80,-860.60,-89.00,911.80,-768.00,110.90}},
{"Mulholland",                  {737.50,-768.00,-89.00,1142.20,-674.80,110.90}},
{"Mulholland",                  {1096.40,-910.10,-89.00,1169.10,-768.00,110.90}},
{"Mulholland",                  {952.60,-937.10,-89.00,1096.40,-860.60,110.90}},
{"Mulholland",                  {911.80,-860.60,-89.00,1096.40,-768.00,110.90}},
{"Mulholland",                  {861.00,-674.80,-89.00,1156.50,-600.80,110.90}},
{"Mulholland Intersection",     {1463.90,-1150.80,-89.00,1812.60,-768.00,110.90}},
{"North Rock",                  {2285.30,-768.00,0.00,2770.50,-269.70,200.00}},
{"Ocean Docks",                 {2373.70,-2697.00,-89.00,2809.20,-2330.40,110.90}},
{"Ocean Docks",                 {2201.80,-2418.30,-89.00,2324.00,-2095.00,110.90}},
{"Ocean Docks",                 {2324.00,-2302.30,-89.00,2703.50,-2145.10,110.90}},
{"Ocean Docks",                 {2089.00,-2394.30,-89.00,2201.80,-2235.80,110.90}},
{"Ocean Docks",                 {2201.80,-2730.80,-89.00,2324.00,-2418.30,110.90}},
{"Ocean Docks",                 {2703.50,-2302.30,-89.00,2959.30,-2126.90,110.90}},
{"Ocean Docks",                 {2324.00,-2145.10,-89.00,2703.50,-2059.20,110.90}},
{"Ocean Flats",                 {-2994.40,277.40,-9.10,-2867.80,458.40,200.00}},
{"Ocean Flats",                 {-2994.40,-222.50,-0.00,-2593.40,277.40,200.00}},
{"Ocean Flats",                 {-2994.40,-430.20,-0.00,-2831.80,-222.50,200.00}},
{"Octane Springs",              {338.60,1228.50,0.00,664.30,1655.00,200.00}},
{"Old Venturas Strip",          {2162.30,2012.10,-89.00,2685.10,2202.70,110.90}},
{"Palisades",                   {-2994.40,458.40,-6.10,-2741.00,1339.60,200.00}},
{"Palomino Creek",              {2160.20,-149.00,0.00,2576.90,228.30,200.00}},
{"Paradiso",                    {-2741.00,793.40,-6.10,-2533.00,1268.40,200.00}},
{"Pershing Square",             {1440.90,-1722.20,-89.00,1583.50,-1577.50,110.90}},
{"Pilgrim",                     {2437.30,1383.20,-89.00,2624.40,1783.20,110.90}},
{"Pilgrim",                     {2624.40,1383.20,-89.00,2685.10,1783.20,110.90}},
{"Pilson Intersection",         {1098.30,2243.20,-89.00,1377.30,2507.20,110.90}},
{"Pirates in Men's Pants",      {1817.30,1469.20,-89.00,2027.40,1703.20,110.90}},
{"Playa del Seville",           {2703.50,-2126.90,-89.00,2959.30,-1852.80,110.90}},
{"Prickle Pine",                {1534.50,2583.20,-89.00,1848.40,2863.20,110.90}},
{"Prickle Pine",                {1117.40,2507.20,-89.00,1534.50,2723.20,110.90}},
{"Prickle Pine",                {1848.40,2553.40,-89.00,1938.80,2863.20,110.90}},
{"Prickle Pine",                {1938.80,2624.20,-89.00,2121.40,2861.50,110.90}},
{"Queens",                      {-2533.00,458.40,0.00,-2329.30,578.30,200.00}},
{"Queens",                      {-2593.40,54.70,0.00,-2411.20,458.40,200.00}},
{"Queens",                      {-2411.20,373.50,0.00,-2253.50,458.40,200.00}},
{"Randolph Industrial Estate",  {1558.00,596.30,-89.00,1823.00,823.20,110.90}},
{"Redsands East",               {1817.30,2011.80,-89.00,2106.70,2202.70,110.90}},
{"Redsands East",               {1817.30,2202.70,-89.00,2011.90,2342.80,110.90}},
{"Redsands East",               {1848.40,2342.80,-89.00,2011.90,2478.40,110.90}},
{"Redsands West",               {1236.60,1883.10,-89.00,1777.30,2142.80,110.90}},
{"Redsands West",               {1297.40,2142.80,-89.00,1777.30,2243.20,110.90}},
{"Redsands West",               {1377.30,2243.20,-89.00,1704.50,2433.20,110.90}},
{"Redsands West",               {1704.50,2243.20,-89.00,1777.30,2342.80,110.90}},
{"Regular Tom",                 {-405.70,1712.80,-3.00,-276.70,1892.70,200.00}},
{"Richman",                     {647.50,-1118.20,-89.00,787.40,-954.60,110.90}},
{"Richman",                     {647.50,-954.60,-89.00,768.60,-860.60,110.90}},
{"Richman",                     {225.10,-1369.60,-89.00,334.50,-1292.00,110.90}},
{"Richman",                     {225.10,-1292.00,-89.00,466.20,-1235.00,110.90}},
{"Richman",                     {72.60,-1404.90,-89.00,225.10,-1235.00,110.90}},
{"Richman",                     {72.60,-1235.00,-89.00,321.30,-1008.10,110.90}},
{"Richman",                     {321.30,-1235.00,-89.00,647.50,-1044.00,110.90}},
{"Richman",                     {321.30,-1044.00,-89.00,647.50,-860.60,110.90}},
{"Richman",                     {321.30,-860.60,-89.00,687.80,-768.00,110.90}},
{"Richman",                     {321.30,-768.00,-89.00,700.70,-674.80,110.90}},
{"Robada Intersection",         {-1119.00,1178.90,-89.00,-862.00,1351.40,110.90}},
{"Roca Escalante",              {2237.40,2202.70,-89.00,2536.40,2542.50,110.90}},
{"Roca Escalante",              {2536.40,2202.70,-89.00,2625.10,2442.50,110.90}},
{"Rockshore East",              {2537.30,676.50,-89.00,2902.30,943.20,110.90}},
{"Rockshore West",              {1997.20,596.30,-89.00,2377.30,823.20,110.90}},
{"Rockshore West",              {2377.30,596.30,-89.00,2537.30,788.80,110.90}},
{"Rodeo",                       {72.60,-1684.60,-89.00,225.10,-1544.10,110.90}},
{"Rodeo",                       {72.60,-1544.10,-89.00,225.10,-1404.90,110.90}},
{"Rodeo",                       {225.10,-1684.60,-89.00,312.80,-1501.90,110.90}},
{"Rodeo",                       {225.10,-1501.90,-89.00,334.50,-1369.60,110.90}},
{"Rodeo",                       {334.50,-1501.90,-89.00,422.60,-1406.00,110.90}},
{"Rodeo",                       {312.80,-1684.60,-89.00,422.60,-1501.90,110.90}},
{"Rodeo",                       {422.60,-1684.60,-89.00,558.00,-1570.20,110.90}},
{"Rodeo",                       {558.00,-1684.60,-89.00,647.50,-1384.90,110.90}},
{"Rodeo",                       {466.20,-1570.20,-89.00,558.00,-1385.00,110.90}},
{"Rodeo",                       {422.60,-1570.20,-89.00,466.20,-1406.00,110.90}},
{"Rodeo",                       {466.20,-1385.00,-89.00,647.50,-1235.00,110.90}},
{"Rodeo",                       {334.50,-1406.00,-89.00,466.20,-1292.00,110.90}},
{"Royal Casino",                {2087.30,1383.20,-89.00,2437.30,1543.20,110.90}},
{"San Andreas Sound",           {2450.30,385.50,-100.00,2759.20,562.30,200.00}},
{"Santa Flora",                 {-2741.00,458.40,-7.60,-2533.00,793.40,200.00}},
{"Santa Maria Beach",           {342.60,-2173.20,-89.00,647.70,-1684.60,110.90}},
{"Santa Maria Beach",           {72.60,-2173.20,-89.00,342.60,-1684.60,110.90}},
{"Shady Cabin",                 {-1632.80,-2263.40,-3.00,-1601.30,-2231.70,200.00}},
{"Shady Creeks",                {-1820.60,-2643.60,-8.00,-1226.70,-1771.60,200.00}},
{"Shady Creeks",                {-2030.10,-2174.80,-6.10,-1820.60,-1771.60,200.00}},
{"Sobell Rail Yards",           {2749.90,1548.90,-89.00,2923.30,1937.20,110.90}},
{"Spinybed",                    {2121.40,2663.10,-89.00,2498.20,2861.50,110.90}},
{"Starfish Casino",             {2437.30,1783.20,-89.00,2685.10,2012.10,110.90}},
{"Starfish Casino",             {2437.30,1858.10,-39.00,2495.00,1970.80,60.90}},
{"Starfish Casino",             {2162.30,1883.20,-89.00,2437.30,2012.10,110.90}},
{"Temple",                      {1252.30,-1130.80,-89.00,1378.30,-1026.30,110.90}},
{"Temple",                      {1252.30,-1026.30,-89.00,1391.00,-926.90,110.90}},
{"Temple",                      {1252.30,-926.90,-89.00,1357.00,-910.10,110.90}},
{"Temple",                      {952.60,-1130.80,-89.00,1096.40,-937.10,110.90}},
{"Temple",                      {1096.40,-1130.80,-89.00,1252.30,-1026.30,110.90}},
{"Temple",                      {1096.40,-1026.30,-89.00,1252.30,-910.10,110.90}},
{"The Camel's Toe",             {2087.30,1203.20,-89.00,2640.40,1383.20,110.90}},
{"The Clown's Pocket",          {2162.30,1783.20,-89.00,2437.30,1883.20,110.90}},
{"The Emerald Isle",            {2011.90,2202.70,-89.00,2237.40,2508.20,110.90}},
{"The Farm",                    {-1209.60,-1317.10,114.90,-908.10,-787.30,251.90}},
{"The Four Dragons Casino",     {1817.30,863.20,-89.00,2027.30,1083.20,110.90}},
{"The High Roller",             {1817.30,1283.20,-89.00,2027.30,1469.20,110.90}},
{"The Mako Span",               {1664.60,401.70,0.00,1785.10,567.20,200.00}},
{"The Panopticon",              {-947.90,-304.30,-1.10,-319.60,327.00,200.00}},
{"The Pink Swan",               {1817.30,1083.20,-89.00,2027.30,1283.20,110.90}},
{"The Sherman Dam",             {-968.70,1929.40,-3.00,-481.10,2155.20,200.00}},
{"The Strip",                   {2027.40,863.20,-89.00,2087.30,1703.20,110.90}},
{"The Strip",                   {2106.70,1863.20,-89.00,2162.30,2202.70,110.90}},
{"The Strip",                   {2027.40,1783.20,-89.00,2162.30,1863.20,110.90}},
{"The Strip",                   {2027.40,1703.20,-89.00,2137.40,1783.20,110.90}},
{"The Visage",                  {1817.30,1863.20,-89.00,2106.70,2011.80,110.90}},
{"The Visage",                  {1817.30,1703.20,-89.00,2027.40,1863.20,110.90}},
{"Unity Station",               {1692.60,-1971.80,-20.40,1812.60,-1932.80,79.50}},
{"Valle Ocultado",              {-936.60,2611.40,2.00,-715.90,2847.90,200.00}},
{"Verdant Bluffs",              {930.20,-2488.40,-89.00,1249.60,-2006.70,110.90}},
{"Verdant Bluffs",              {1073.20,-2006.70,-89.00,1249.60,-1842.20,110.90}},
{"Verdant Bluffs",              {1249.60,-2179.20,-89.00,1692.60,-1842.20,110.90}},
{"Verdant Meadows",             {37.00,2337.10,-3.00,435.90,2677.90,200.00}},
{"Verona Beach",                {647.70,-2173.20,-89.00,930.20,-1804.20,110.90}},
{"Verona Beach",                {930.20,-2006.70,-89.00,1073.20,-1804.20,110.90}},
{"Verona Beach",                {851.40,-1804.20,-89.00,1046.10,-1577.50,110.90}},
{"Verona Beach",                {1161.50,-1722.20,-89.00,1323.90,-1577.50,110.90}},
{"Verona Beach",                {1046.10,-1722.20,-89.00,1161.50,-1577.50,110.90}},
{"Vinewood",                    {787.40,-1310.20,-89.00,952.60,-1130.80,110.90}},
{"Vinewood",                    {787.40,-1130.80,-89.00,952.60,-954.60,110.90}},
{"Vinewood",                    {647.50,-1227.20,-89.00,787.40,-1118.20,110.90}},
{"Vinewood",                    {647.70,-1416.20,-89.00,787.40,-1227.20,110.90}},
{"Whitewood Estates",           {883.30,1726.20,-89.00,1098.30,2507.20,110.90}},
{"Whitewood Estates",           {1098.30,1726.20,-89.00,1197.30,2243.20,110.90}},
{"Willowfield",                 {1970.60,-2179.20,-89.00,2089.00,-1852.80,110.90}},
{"Willowfield",                 {2089.00,-2235.80,-89.00,2201.80,-1989.90,110.90}},
{"Willowfield",                 {2089.00,-1989.90,-89.00,2324.00,-1852.80,110.90}},
{"Willowfield",                 {2201.80,-2095.00,-89.00,2324.00,-1989.90,110.90}},
{"Willowfield",                 {2541.70,-1941.40,-89.00,2703.50,-1852.80,110.90}},
{"Willowfield",                 {2324.00,-2059.20,-89.00,2541.70,-1852.80,110.90}},
{"Willowfield",                 {2541.70,-2059.20,-89.00,2703.50,-1941.40,110.90}},
{"Yellow Bell Station",         {1377.40,2600.40,-21.90,1492.40,2687.30,78.00}},
{"Los Santos",                  {44.60,-2892.90,-242.90,2997.00,-768.00,900.00}},
{"Las Venturas",                {869.40,596.30,-242.90,2997.00,2993.80,900.00}},
{"Bone County",                 {-480.50,596.30,-242.90,869.40,2993.80,900.00}},
{"Tierra Robada",               {-2997.40,1659.60,-242.90,-480.50,2993.80,900.00}},
{"Tierra Robada",               {-1213.90,596.30,-242.90,-480.50,1659.60,900.00}},
{"San Fierro",                  {-2997.40,-1115.50,-242.90,-1213.90,1659.60,900.00}},
{"Red County",                  {-1213.90,-768.00,-242.90,2997.00,596.30,900.00}},
{"Flint County",                {-1213.90,-2892.90,-242.90,44.60,-768.00,900.00}},
{"Whetstone",                   {-2997.40,-2892.90,-242.90,-1213.90,-1115.50,900.00}}
};

#define MAX_ADVERT 100
enum aInfo
{
	id,
	aText[128],
	aName[MAX_PLAYER_NAME],
	aPhone,
};
new AI[MAX_ADVERT][aInfo];

enum VEHICLE_DATA
{
	vModel,
	vColor1,
	vColor2,
	vPrice,
	vOwner [ 24 ],
	Float: vPosX,
	Float: vPosY,
	Float: vPosZ,
	Float: vPosA,
	vPlate [ 32 ],
	vLocked
};

new VehicleInfo				[MAX_BAUTO] [VEHICLE_DATA],
	VehCreated				[MAX_VEHICLES],
	TOTAL_VEHS, Car[360];

enum ENTER_DATA
{
	id,
	Float:pX,
	Float:pY,
	Float:pZ,
	pM,
	pT,
	pI,
	pV,
	Float:ptX,
	Float:ptY,
	Float:ptZ,
	Float:ptFa,
	ptI,
	ptV,
	Name[32],
	pP
};
new EntersInfo[MAX_ENTERS][ENTER_DATA];

enum GPS_DATA
{
	gID,
	gName[64],
	Float:gLoc[3],
 gType
};
new GPSInfo[MAX_GPS][GPS_DATA];

//new boldoor, lspddoor[2], lspddoors[5],
//new static_object_count;

new Text:load_texture[4];
new PlayerText:load_texture_p[MAX_PLAYERS][60];
new gLoadTime[MAX_PLAYERS char];
new PlayerText:RegAuth[53];
new PlayerText:gCurrentPageTextDrawId[MAX_PLAYERS];
new PlayerText:gHeaderTextDrawId[MAX_PLAYERS];
new PlayerText:gBackgroundTextDrawId[MAX_PLAYERS];
new PlayerText:gItemsNumber[MAX_PLAYERS][INVNUMBERS];
new PlayerText:gSelectionItems[MAX_PLAYERS][INVNUMBERS];
new Text:LogoType, Text:LogoType1;

new GPS_ACTIVE[MAX_PLAYERS];
new Text3D:CargoText[1];
new ghour;
new GZ_ZONE;
new bool:Ether[MAX_PLAYERS];
new FOR_SERVERS;
new bool:EtherCalled[MAX_PLAYERS];
new CellTime[MAX_PLAYERS];
new bool:Phone[MAX_PLAYERS];
new TOTALCARGO;
new bool:TaxiJobStarted[MAX_PLAYERS];
new bool:PlayerEnteredPoint[MAX_PLAYERS];
new bool:PlayerCalledTaxi[MAX_PLAYERS];
new bool:PlayerRentTaxi[MAX_PLAYERS];
new bool:PlayerTaxiStarted[MAX_PLAYERS];
new ExitCarTimer[MAX_PLAYERS];
new TaxiDialogTimer[MAX_PLAYERS];
new PlayerService[MAX_PLAYERS];
new GetPlayerRentTaxi[MAX_PLAYERS];
new PlayerExitCount[MAX_PLAYERS];
new Float:FIRSTPOS[MAX_PLAYERS][3];
new Float:LASTPOS[MAX_PLAYERS][3];
new TAXI_ID[MAX_TAXI];
new Text3D:TAXI_TEXT[MAX_TAXI];
new CheckNewBank[MAX_PLAYERS];
new Invite_JOB[MAX_PLAYERS];
new PDcar[57];
new Market[MAX_PLAYERS], Mark[MAX_PLAYERS], Offer[MAX_PLAYERS], Opt[MAX_PLAYERS], AdvertTime;
new bool:PlayerCuffed[MAX_PLAYERS];
new CargoPick[1], LessPick[1];
new ParcPick[1];
new WoodTimer[MAX_PLAYERS];
new animlib_2[MAX_PLAYERS][30], animname_2[MAX_PLAYERS][30];
new Text:Speed[MAX_PLAYERS][22];
new Text3D:Marks[2], Text3D:A_Shop[2];
new gTime[3];
new Vehicle[7];
new Mysql, Timer;
new Menu:SkinMenu[2];
new allowedfactions[] = { 8, 9, 10, 11, 12};
new query[MAX_Q], form[MAX_F], spect[MAX_SS], c_business[MAX_C], coordc[MAX_CC], var[MAX_V], tcp[MAX_T], lines[MAX_S];
new Mobile[MAX_PLAYERS];
new Text:AmountDraw[MAX_PLAYERS];
new Text:ProcentDraw[MAX_PLAYERS];
new Text:AmountLDraw[MAX_PLAYERS];
new TOTALHOUSE, TOTALBIZZ, TOTALADVERT, TOTALATM, TOTALENTERS, TOTALGPS, TOTALFACTIONS;
new JoinReg[30][] = { {122},{210},{229},{2},{44},{96},{101},{184},{48},{6},{37},{60},{7},{24},{25},{3},{30},{177},/*Ж*/{12},{41},{55},{56},{90},{93},{69},{40},{9},{13},{64},{243} };

new ShowRulesDialog[1800];
new RulesDialog[18][] =
{
	{"{E6B122}1. Основное\n"},
	{"{FFFFFF}- Запрещено использовать любые читы, трейнеры, моды или CLEO скрипты\n"},
	{"{FFFFFF}- Запрещен DeathMatch (DM) - убийство и нанесение вреда игрокам без причины\n"},
	{"{FFFFFF}- Запрещено убивать игроков на спавне (на месте, где они появляются в игре)\n"},
	{"{FFFFFF}- Запрещены убийства путем наезда на него или стрельбы из авто\n"},
	{"{FFFFFF}- Запрещено уходить на паузу в целях спасения от нападающих\n"},
	{"{FFFFFF}- Запрещено использование возможностей сервера для создания неудобств другим игрокам\n\n"},
	{"{E6B122}2. Процесс общения\n"},
	{"{FFFFFF}- Запрещен мат, оскорбление других игроков\n"},
	{"{FFFFFF}- Запрещены угрозы другим игрокам (не относящиеся к игровому процессу\n"},
	{"{FFFFFF}- Запрещено писать транслитом (например ''kak igrat' na etom servere???'')\n"},
	{"{FFFFFF}- Запрещена любая реклама сторонних ресурсов\n"},
	{"{FFFFFF}- Запрещено флудить (часто повторять одинаковые фразы, или фразы без смысловой нагрузки)\n\n"},
	{"{E6B122}3. Администрация\n"},
	{"{FFFFFF}- Необходимо сообщать администрации сервера о любых случаях нарушения данных правил\n"},
	{"{FFFFFF}- Администрация самостоятельно выбирает штрафные санкции для каждого конкретного случая\n"},
	{"{FFFFFF}- Санкции могут применяться сразу после нарушения или через время (например, впоследствии поступления жалобы)\n"},
	{"{FFFFFF}- Если штрафная санкция применена к вам ошибочно, свяжитесь с администрацией"}
};

new ShowDriveDialog[1500];
new DriveDialog[15][] =
{
	{"{E6B122}1. Общие правила\n"},
	{"{FFFFFF}- Обгон транспортного средства разрешен только с левой стороны,\n"},
	{"{FFFFFF}- При этом водитель обязан убедиться что встречная полоса свободная на достаточном для обгона расстоянии\n"},
	{"{FFFFFF}- При ДТП водители обязаны позвонить в полицию 02, и дождаться ДПС.\n\n"},
	{"{E6B122}2. Скорость движения\n"},
	{"{FFFFFF}- В пределах города разрешается движение транспортных средств со скоростью не более 50 км/ч\n"},
	{"{FFFFFF}- В жилых зонах и на дворовых территориях не более 30 км/ч\n"},
	{"{FFFFFF}- За пределами города ограничений скорости нет\n"},
	{"{FFFFFF}- Чтобы включить ограничитель скорости, нажмите {0F8FCD}Num 4 {FFFFFF}.\n\n"},
	{"{E6B122}3. Остановка и стоянка\n"},
	{"{FFFFFF}- Остановка и стоянка транспортных средств разрешается на правой стороне дороги на обочине\n"},
	{"{FFFFFF}- В специально отведённых для этого местах.\n\n"},
	{"{E6B122}4. ДПС\n"},
	{"{FFFFFF}- При виде автомобиля с включённой сиреной, водитель обязан сбавить скорость и прижаться к обочине\n"},
	{"{FFFFFF}- Водитель обязан предъявить паспорт/лицензии/документы на машину патрульному, если тот спросил."}
};

new gWood[38], WoodP[38], TOTALTREE;
new Float:Wood[][3] = {
	{-750.2000122,-157.5370026,66.0350037},
	{-711.8060303,-179.0319977,64.4960022},
	{-679.9680176,-179.4949951,61.8339996},
	{-657.0419922,-112.7610016,61.7270012},
	{-670.2169800,-174.7209930,60.4840012},
	{-645.4423828,-132.9521484,61.6320000},
	{-703.9873047,-108.1845703,66.3079987},
	{-671.0664062,-88.2119141,63.2220001},
	{-659.8007812,-89.8779297,62.2849998},
	{-643.1074219,-147.9228516,63.2989998},
	{-654.3154297,-141.6699219,60.5400009},
	{-663.8720703,-127.9794922,59.9269981},
	{-662.0986328,-148.3554688,59.6180000},
	{-673.1420288,-136.9120026,58.8279991},
	{-723.8759766,-195.5390015,66.3769989},
	{-680.4453125,-148.3261719,59.9189987},
	{-683.3857422,-122.3339844,61.4650002},
	{-688.1484375,-105.6562500,64.1429977},
	{-699.9248047,-129.1474609,65.5139999},
	{-693.5517578,-136.9414062,63.5660019},
	{-713.2568359,-197.9736328,67.3720016},
	{-702.5097656,-190.0068359,65.1600037},
	{-690.4238281,-200.7275391,66.5159988},
	{-690.5312500,-183.6718750,63.4370003},
	{-697.0185547,-177.0214844,62.6329994},
	{-711.5498047,-188.4101562,65.8720016},
	{-740.0239868,-164.3639984,66.3140030},
	{-722.2451172,-184.1347656,65.6930008},
	{-730.7431641,-191.5781250,65.4729996},
	{-727.8164062,-184.1787109,65.3850021},
	{-731.6396484,-159.5820312,65.7979965},
	{-760.5097656,-152.9121094,65.0260010},
	{-755.0498047,-168.6611328,66.5350037},
	{-733.9730225,-143.4779968,65.9619980},
	{-728.1699219,-131.7451172,66.8369980},
	{-708.1710205,-122.8440018,67.9089966},
	{-714.6279907,-147.3619995,66.0390015},
	{-649.9329834,-107.3590012,61.7220001}
};

main()
{
}

public OnGameModeInit()
{
    // LOADING (ДОРАБОТАТЬ!)
    load_texture[3] = TextDrawCreate(425.000000, 158.125000, "usebox");
    TextDrawLetterSize(load_texture[3], 0.000000, 1.141666);
    TextDrawTextSize(load_texture[3], 223.500000, 0.000000);
    TextDrawAlignment(load_texture[3], 1);
    TextDrawColor(load_texture[3], 0x00000000);
    TextDrawUseBox(load_texture[3], 1);
    TextDrawBoxColor(load_texture[3], 0x00000090);
    TextDrawSetShadow(load_texture[3], 0);
    TextDrawSetOutline(load_texture[3], 0);
    TextDrawBackgroundColor(load_texture[3], 0x000000FF);
    TextDrawFont(load_texture[3], 0);
    TextDrawSetProportional(load_texture[3], 1);
    TextDrawSetSelectable(load_texture[3], 0);

    load_texture[2] = TextDrawCreate(248.000000, 237.562500, "Streaming_objects,_wait!");
    TextDrawLetterSize(load_texture[2], 0.361499, 1.193125);
    TextDrawTextSize(load_texture[2], 1280.000000, 1280.000000);
    TextDrawAlignment(load_texture[2], 1);
    TextDrawColor(load_texture[2], 0xFFFFFFFFFFFFFFFF);
    TextDrawUseBox(load_texture[2], 1);
    TextDrawBoxColor(load_texture[2], 0x00000000);
    TextDrawSetShadow(load_texture[2], 0);
    TextDrawSetOutline(load_texture[2], 1);
    TextDrawBackgroundColor(load_texture[2], 0x00000033);
    TextDrawFont(load_texture[2], 1);
    TextDrawSetProportional(load_texture[2], 1);
    TextDrawSetSelectable(load_texture[2], 0);

    load_texture[1] = TextDrawCreate(293.500000, 220.937500, "Loading...");
    TextDrawLetterSize(load_texture[1], 0.449999, 1.600000);
    TextDrawTextSize(load_texture[1], 1280.000000, 1280.000000);
    TextDrawAlignment(load_texture[1], 1);
    TextDrawColor(load_texture[1], 0xFFFFFFFFFFFFFFFF);
    TextDrawUseBox(load_texture[1], 1);
    TextDrawBoxColor(load_texture[1], 0x00000000);
    TextDrawSetShadow(load_texture[1], 0);
    TextDrawSetOutline(load_texture[1], 1);
    TextDrawBackgroundColor(load_texture[1], 0x00000033);
    TextDrawFont(load_texture[1], 3);
    TextDrawSetProportional(load_texture[1], 1);
    TextDrawSetSelectable(load_texture[1], 0);

    load_texture[0] = TextDrawCreate(424.500000, 158.125000, "LD_SPAC:white");
    TextDrawLetterSize(load_texture[0], 0.000000, 11.170826);
    TextDrawTextSize(load_texture[0], 223.000000, 0.000000);
    TextDrawAlignment(load_texture[0], 1);
    TextDrawColor(load_texture[0], 0x0000A0FF);
    TextDrawUseBox(load_texture[0], 1);
    TextDrawBoxColor(load_texture[0], 0x24252199);
    TextDrawSetShadow(load_texture[0], 0);
    TextDrawSetOutline(load_texture[0], 0);
    TextDrawBackgroundColor(load_texture[0], 0x0000A0FF);
    TextDrawFont(load_texture[0], 3);
    TextDrawSetProportional(load_texture[0], 1);
    TextDrawSetSelectable(load_texture[0], 0);
	// LOGOTYPE
	LogoType = TextDrawCreate(499.000000, 2.187500, "TRANQUILITY");
	TextDrawLetterSize(LogoType, 0.449999, 1.600000);
	TextDrawAlignment(LogoType, 1);
	TextDrawColor(LogoType, -1378294017);
	TextDrawSetShadow(LogoType, 0);
	TextDrawSetOutline(LogoType, 1);
	TextDrawBackgroundColor(LogoType, 51);
	TextDrawFont(LogoType, 1);
	TextDrawSetProportional(LogoType, 1);

	LogoType1 = TextDrawCreate(499.500000, 14.000000, "Simulation");
	TextDrawLetterSize(LogoType1, 0.343500, 0.943751);
	TextDrawAlignment(LogoType1, 1);
	TextDrawColor(LogoType1, -1);
	TextDrawSetShadow(LogoType1, 0);
	TextDrawSetOutline(LogoType1, 1);
	TextDrawBackgroundColor(LogoType1, 51);
	TextDrawFont(LogoType1, 1);
	TextDrawSetProportional(LogoType1, 1);

    Mysql = mysql_connect(HOST, USER, BASE, PASS);
    for(new i = 0; i < MAX_TAXI; i++)
	{
	    new str[30];
	    TAXI_ID[i] = CreateVehicle(t_Info[i][tModel], t_Info[i][tPosX], t_Info[i][tPosY], t_Info[i][tPosZ], t_Info[i][tPosA], 6, 6, -1);
		format(str, sizeof(str), "{000000}TAXI %d", i+1);
		SetVehicleNumberPlate(TAXI_ID[i], str);
		SetVehicleToRespawn(TAXI_ID[i]);
		TAXI_TEXT[i] = Create3DTextLabel("[{FFFFFF}Скотовозка{DEF200}]\n{13EB3A}свободно", 0xDEF200FF, 0.0, 0.0, 0.0, 50.0, 0, 1);
        Attach3DTextLabelToVehicle(TAXI_TEXT[i], TAXI_ID[i], 0.0, -0.3, 1.0);
	}
    FOR_SERVERS = cvector();
    LoadMenu();
    LoadMap();
	ShowNameTags(1);
    DisableNameTagLOS();
	ShowPlayerMarkers(2);
	EnableStuntBonusForAll(0);
	DisableInteriorEnterExits();
	SetGameModeText(NameServer);
	SetNameTagDrawDistance(30.0);
	LimitPlayerMarkerRadius(100.0);
	ManualVehicleEngineAndLights();
	gettime(gTime[0], gTime[1], gTime[2]);
	SetTimer("SecTimer", 1000, 1);
	SetWorldTime(gTime[0]);
	LoadMySql();
	
	ParcPick[0] = CreatePickup(1559, 23, 1114.8312,-1750.0389,13.5703,0);
	CargoPick[0] = CreatePickup(1275, 23, 2137.5396,-2282.5151,20.6719,0);
	LessPick[0] = CreatePickup(1275, 23, -759.6343,-133.6706,65.7941,0);
	return true;
}

public OnGameModeExit()
{
    DestroyGeneralItems();
    DestroyElevator();
    DestroyDoors();
    DestroyEntryExits();
	for(new i = 0; i < MAX_BAUTO; i++) DestroyVehicle(i);
	for(new i = 0; i < MAX_TAXI; i++)
	{
	    DestroyVehicle(TAXI_ID[i]);
	    TAXI_ID[i] = INVALID_VEHICLE_ID;
	    Delete3DTextLabel(TAXI_TEXT[i]);
	}
	for(new i=0; i<MAX_PLAYERS; i++)
	{
	    if(IsPlayerConnected(i))
		{
			PlayerEnteredPoint[i] = false;
	    	GetPlayerRentTaxi[i] = INVALID_VEHICLE_ID;
	    	PlayerRentTaxi[i] = false;
	    	PlayerCalledTaxi[i] = false;
	    	TaxiJobStarted[i] = false;
	    	PlayerTaxiStarted[i] = false;
	    	PlayerService[i] = INVALID_PLAYER_ID;
	    	for(new d=0; d<MAX_PLAYERS; d++)
			{
	    		if(IsPlayerConnected(d) && PlayerCalledTaxi[d]) RemovePlayerMapIcon(i, d);
	  		}
    	}
	}
	return mysql_close(Mysql);
}

public OnObjectMoved(objectid)
{
    if(objectid == g_ElevData[e_ElevObj])
	{
        switch(g_ElevData[e_ElevState])
		{
            case ELEVSTATE_MOVING_U:
			{
                 g_ElevData[e_ElevFloor] = ELEVFLOOR_T;
            }
            case ELEVSTATE_MOVING_D:
			{
                g_ElevData[e_ElevFloor] = ELEVFLOOR_B;
            }
            default: return 1;
        }

        g_ElevData[e_ElevState] = ELEVSTATE_OPENING;
        ApplyElevatorState();

        new Float:x, Float:y, Float:z;
        GetObjectPos(g_ElevData[e_ElevObj], x, y, z);
        PlaySoundForAll(6401, x, y, z);
        return 1;
    }
    return 1;
}

public OnDynamicObjectMoved(objectid)
{
    for(new doorid; doorid < g_DoorsInitiated; doorid ++)
	{
        if( objectid == g_DoorData[doorid][e_DoorDynObj] )
		{
            if(g_DoorData[doorid][e_DoorState] == DOORSTATE_OPENING)
			{
                g_DoorData[doorid][e_DoorState] = DOORSTATE_OPEN;
                UpdateDoorState(doorid);
            }
			else if(g_DoorData[doorid][e_DoorState] == DOORSTATE_CLOSING)
			{
                g_DoorData[doorid][e_DoorState] = DOORSTATE_CLOSE;
                UpdateDoorState(doorid);
            }
            return 1;
        }
    }

    for(new floor; floor < MAX_ELEVFLOORS; floor ++)
	{
        if(objectid == g_ElevData[e_ElevExtDoorDynObj][floor])
		{
            if(g_ElevData[e_ElevState] == ELEVSTATE_CLOSING)
			{
                g_ElevData[e_ElevState] = ELEVSTATE_CLOSE;
                ApplyElevatorState();

                if( g_ElevData[e_ElevFloor] == ELEVFLOOR_B ) {
                    g_ElevData[e_ElevState] = ELEVSTATE_MOVING_U;
                }
				else
				{
                    g_ElevData[e_ElevState] = ELEVSTATE_MOVING_D;
                }
                ApplyElevatorState();

            }
			else if(g_ElevData[e_ElevState] == ELEVSTATE_OPENING)
			{
                g_ElevData[e_ElevState] = ELEVSTATE_OPEN;
                ApplyElevatorState();
            }
            return 1;
        }
    }
    return 1;
}

public OnPlayerEnterDynamicArea(playerid, areaid)
{
    if(areaid == g_EntryArea)
	{
        if(g_EntryExitSkip{playerid})
		{
            g_EntryExitSkip{playerid} = false;
        }
		else
		{
            g_EntryExitSkip{playerid} = true;
            SetPlayerPos(playerid, -1578.0275, -2569.4412, 28.8323);
        }
        return 1;
    }
    if(areaid == g_ExitArea)
	{
        if(g_EntryExitSkip{playerid})
		{
            g_EntryExitSkip{playerid} = false;
        }
		else
		{
            g_EntryExitSkip{playerid} = true;
            SetPlayerPos(playerid, -1584.0164, -2572.3108, 28.8232);
        }
        return 1;
    }

    for(new doorid; doorid < g_DoorsInitiated; doorid++)
	{
        if(areaid == g_DoorData[doorid][e_DoorDynArea])
		{
            UpdateDoorState(doorid);
            return 1;
        }
    }
    for(new floor; floor < MAX_ELEVFLOORS; floor++)
	{
        if(areaid == g_ElevData[e_ElevDynArea][floor]) {
            if(g_ElevData[e_ElevFloor] != floor && g_ElevData[e_ElevState] == ELEVSTATE_OPEN)
			{
                g_ElevData[e_ElevState] = ELEVSTATE_CLOSING;
                ApplyElevatorState();
            }
            return 1;
        }
    }
    return 1;
}

public OnPlayerLeaveDynamicArea(playerid, areaid)
{
    for(new doorid; doorid < g_DoorsInitiated; doorid ++)
	{
        if(areaid == g_DoorData[doorid][e_DoorDynArea])
		{
            UpdateDoorState(doorid);
            return 1;
        }
    }
    return 1;
}

public OnDynamicActorStreamIn(actorid, forplayerid)
{
    for(new idx, idx_limit = sizeof g_DynamicActor; idx < idx_limit; idx ++)
	{
        if( actorid == g_DynamicActor[idx])
		{
            switch(idx)
			{
                case ACTOR_ENTRY_GUARD:
				{
                    ApplyDynamicActorAnimation(g_DynamicActor[idx], "COP_AMBIENT", "COPLOOK_LOOP", 4.0998, 1, 0, 0, 0, 0);
                }
                case ACTOR_STAIRWAY_GUARD_1, ACTOR_STAIRWAY_GUARD_2:
				{
                    ApplyDynamicActorAnimation(g_DynamicActor[idx], "MUSCULAR", "MUSCLEIDLE", 4.0998, 1, 0, 0, 0, 0);
                }
                case ACTOR_RECEPTION_GUARD_1:
				{
                    ApplyDynamicActorAnimation(g_DynamicActor[idx], "MISC", "IDLE_CHAT_02", 4.0998, 1, 0, 0, 0, 0);
                }
                case ACTOR_RECEPTION_GUARD_2:
				{
                    ApplyDynamicActorAnimation(g_DynamicActor[idx], "PED", "IDLE_CHAT", 4.0998, 1, 0, 0, 0, 0);
                }
                case ACTOR_MECHANIC:
				{
                     ApplyDynamicActorAnimation(g_DynamicActor[idx], "COP_AMBIENT", "COPBROWSE_LOOP", 4.0998, 1, 0, 0, 0, 0);
                }
                case ACTOR_HOMELESS:
				{
                    ApplyDynamicActorAnimation(g_DynamicActor[idx], "CRACK", "CRCKIDLE2", 4.0998, 1, 0, 0, 0, 0);
                }
                case ACTOR_CAMERAMAN:
				{
                    ApplyDynamicActorAnimation(g_DynamicActor[idx], "MISC", "IDLE_CHAT_02", 4.0998, 1, 0, 0, 0, 0);
                }
                case ACTOR_VIP:
				{
                    ApplyDynamicActorAnimation(g_DynamicActor[idx], "PED", "IDLE_CHAT", 4.0998, 1, 0, 0, 0, 0);
                }
                case ACTOR_CHEF:
				{
                    ApplyDynamicActorAnimation(g_DynamicActor[idx], "ON_LOOKERS", "PANIC_LOOP", 4.0998, 1, 0, 0, 0, 0);
                }
                case ACTOR_BARTENDER:
				{
                    ApplyDynamicActorAnimation(g_DynamicActor[idx], "ON_LOOKERS", "PANIC_POINT", 4.0998, 1, 0, 0, 0, 0);
                }
                case ACTOR_FOREMAN:
				{
                    ApplyDynamicActorAnimation(g_DynamicActor[idx], "ON_LOOKERS", "PANIC_SHOUT", 4.0998, 1, 0, 0, 0, 0);
                }
                case ACTOR_RECEPTIONIST:
				{
                      ApplyDynamicActorAnimation(g_DynamicActor[idx], "COP_AMBIENT", "COPLOOK_THINK", 4.0998, 1, 0, 0, 0, 0);
                }
                case ACTOR_IT_SUPPORT:
				{
                    ApplyDynamicActorAnimation(g_DynamicActor[idx], "INT_SHOP", "SHOP_LOOKA", 4.0998, 1, 0, 0, 0, 0);
                }
                case ACTOR_STYLIST:
				{
                    ApplyDynamicActorAnimation(g_DynamicActor[idx], "BAR", "BARCUSTOM_LOOP", 4.0998, 1, 0, 0, 0, 0);
                }
            }
            return 1;
        }
    }
    return true;
}

public OnPlayerConnect(playerid)
{
	// Global Position System
	NAVpTD[playerid] = CreatePlayerTextDraw(playerid, 405.724487, 415.166564, "Distance Left: ~y~0000.00m");
	PlayerTextDrawLetterSize(playerid, NAVpTD[playerid], 0.179326, 1.109999);
	PlayerTextDrawAlignment(playerid, NAVpTD[playerid], 1);
	PlayerTextDrawColor(playerid, NAVpTD[playerid], -1);
	PlayerTextDrawSetShadow(playerid, NAVpTD[playerid], 0);
	PlayerTextDrawSetOutline(playerid, NAVpTD[playerid], 0);
	PlayerTextDrawBackgroundColor(playerid, NAVpTD[playerid], 255);
	PlayerTextDrawFont(playerid, NAVpTD[playerid], 2);
	PlayerTextDrawSetProportional(playerid, NAVpTD[playerid], 1);
	PlayerTextDrawSetShadow(playerid, NAVpTD[playerid], 0);
	//
    TextDrawShowForPlayer(playerid, Text:LogoType);
	TextDrawShowForPlayer(playerid, Text:LogoType1);
	gHeaderTextDrawId[playerid] = PlayerText:INVALID_TEXT_DRAW;
	gBackgroundTextDrawId[playerid] = PlayerText:INVALID_TEXT_DRAW;
	gCurrentPageTextDrawId[playerid] = PlayerText:INVALID_TEXT_DRAW;
	for(new x=0; x < INVNUMBERS; x++)
	{
		gSelectionItems[playerid][x] = PlayerText:INVALID_TEXT_DRAW;
		gItemsNumber[playerid][x] = PlayerText:INVALID_TEXT_DRAW;
	}
	cvector_push_back(FOR_SERVERS, playerid);
	TogglePlayerSpectating(playerid, true);
	LoadTextDraw(playerid);
	PlayerEnteredPoint[playerid] = false;
    GetPlayerRentTaxi[playerid] = INVALID_VEHICLE_ID;
    PlayerRentTaxi[playerid] = false;
    PlayerCalledTaxi[playerid] = false;
    TaxiJobStarted[playerid] = false;
    PlayerTaxiStarted[playerid] = false;
    PlayerService[playerid] = INVALID_PLAYER_ID;
	LoadData(playerid);
	/*
	#include TRNQLT\MvDell.inc
	#include TRNQLT\RmObj.inc
	*/
	SetPVarInt(playerid, "wrongPass", 3);
    GetPlayerName(playerid, cDataInfo[playerid][Name], MAX_PLAYER_NAME);
   	mysql_format(Mysql, query, sizeof(query),"SELECT * FROM `"TABLE_ACCOUNT"` WHERE name = '%e'", GetName(playerid));
   	mysql_function_query(Mysql, query, true, "OnPlayerLogin", "i", playerid);
	return true;
}

public OnPlayerDisconnect(playerid, reason)
{
	// Global Position System
	if(GetPVarInt(playerid, "GPS"))
	{
		KillTimer(pNavTimer[playerid]);
		DestroyDynamicObject(ok[playerid]);
		DisablePlayerCheckpoint(playerid);
		SetPVarInt(playerid, "GPS", 0);
	}
	//
	new idx = cvector_find(FOR_SERVERS, playerid);
	if(idx != -1)
	{
	    cvector_remove(FOR_SERVERS, idx);
	}
	TextDrawDestroy(LogoType);
	TextDrawDestroy(LogoType1);
	for(new i; i < 22; ++i) TextDrawDestroy(Speed[playerid][i]);
	TextDrawDestroy(ProcentDraw[playerid]);
	TextDrawDestroy(AmountLDraw[playerid]);
	TextDrawDestroy(AmountDraw[playerid]);
	SavePlayer(playerid);
	if(GetPVarInt(playerid, "Cargo") > 0)
	{
		DeletePVar(playerid, "OldCargoSkin");
		DeletePVar(playerid, "Cargo");
	}
	if(GetPVarInt(playerid, "LessPil") > 0)
	{
	    DeletePVar(playerid, "OldLessSkin");
		DeletePVar(playerid, "LessPil");
		DeletePVar(playerid, "LessProc");
		DeletePVar(playerid, "Wood");
		DeletePVar(playerid, "LessStatus");
	}
	return true;
}

public OnPlayerSpawn(playerid)
{
    SetPVarInt(playerid, "pEsc", 1);
	TogglePlayerSpectating(playerid, false);
	SetPlayerInterior(playerid, 0);
	SetHealth(playerid, GetPVarFloat(playerid, "pHeal")+1);
	DeletePVar(playerid, "wrongPass");
	StopAudioStreamForPlayer(playerid);
	SetPlayerVirtualWorld(playerid, 0);
	SetPlayerColor(playerid, COLOR_PLAYER);
	SetMoney(playerid, GetPVarInt(playerid, "pCash"));
	SetPlayerSkin(playerid, GetPVarInt(playerid, "pModel"));
	SetPlayerScore(playerid, GetPVarInt(playerid, "pLevel"));
	if(GetPVarInt(playerid, "pChar") > 0) SetPlayerSkin(playerid,GetPVarInt(playerid, "pChar"));
	if(GetPVarInt(playerid, "Clothes") > 0)
	{
	    TogglePlayerControllable(playerid, false);
	    SetPlayerVirtualWorld(playerid, playerid);
	  	SetPlayerInterior(playerid,10);
	    SetPlayerPos(playerid,258.4893,-41.4008,1002.0234);
	   	SetPlayerFacingAngle(playerid, 90.0);
	   	SetPlayerCameraPos(playerid, 256.0815,-43.0475,1003.0234);
	   	SetPlayerCameraLookAt(playerid, 258.4893,-41.4008,1002.0234);
	   	SetPVarInt(playerid, "pSpawns", 1);
		SetPlayerInt(GetName(playerid), "Spawns", GetPVarInt(playerid, "pSpawns"));

		switch(GetPVarInt(playerid,"Clothes"))
        {
			case 1:
			{
				ShowMenuForPlayer(SkinMenu[0],playerid);
		  		if(GetPVarInt(playerid, "pSex"))
		  		{
		  		    switch(GetPVarInt(playerid, "Nation"))
		  		    {
		  		        case 0: { SetPlayerSkin(playerid, JoinReg[0][0]); SetPVarInt(playerid, "ChosenSkin", JoinReg[0][0]); DeletePVar(playerid, "CharReg"); }
						case 1: { SetPlayerSkin(playerid, JoinReg[3][0]); SetPVarInt(playerid, "ChosenSkin", JoinReg[3][0]); SetPVarInt(playerid,"CharReg", 3); }
						case 2: { SetPlayerSkin(playerid, JoinReg[6][0]); SetPVarInt(playerid, "ChosenSkin", JoinReg[6][0]); SetPVarInt(playerid,"CharReg", 6); }
						case 3: { SetPlayerSkin(playerid, JoinReg[9][0]); SetPVarInt(playerid, "ChosenSkin", JoinReg[9][0]); SetPVarInt(playerid,"CharReg", 9); }
						case 4: { SetPlayerSkin(playerid, JoinReg[12][0]); SetPVarInt(playerid, "ChosenSkin", JoinReg[12][0]); SetPVarInt(playerid,"CharReg", 12); }
						case 5: { SetPlayerSkin(playerid, JoinReg[15][0]); SetPVarInt(playerid, "ChosenSkin", JoinReg[15][0]); SetPVarInt(playerid,"CharReg", 15); }
					}
				}
		  		else
		  		{
		    		switch(GetPVarInt(playerid, "Nation"))
		  		    {
		  		        case 0: { SetPlayerSkin(playerid, JoinReg[18][0]); SetPVarInt(playerid, "ChosenSkin", JoinReg[18][0]); SetPVarInt(playerid,"CharReg", 18); }
						case 1: { SetPlayerSkin(playerid, JoinReg[20][0]); SetPVarInt(playerid, "ChosenSkin", JoinReg[20][0]); SetPVarInt(playerid,"CharReg", 20); }
						case 2: { SetPlayerSkin(playerid, JoinReg[22][0]); SetPVarInt(playerid, "ChosenSkin", JoinReg[22][0]); SetPVarInt(playerid,"CharReg", 22); }
						case 3: { SetPlayerSkin(playerid, JoinReg[24][0]); SetPVarInt(playerid, "ChosenSkin", JoinReg[24][0]); SetPVarInt(playerid,"CharReg", 24); }
						case 4: { SetPlayerSkin(playerid, JoinReg[26][0]); SetPVarInt(playerid, "ChosenSkin", JoinReg[26][0]); SetPVarInt(playerid,"CharReg", 26); }
						case 5: { SetPlayerSkin(playerid, JoinReg[28][0]); SetPVarInt(playerid, "ChosenSkin", JoinReg[28][0]); SetPVarInt(playerid,"CharReg", 28); }
					}
			    }
			}
		}
	}
	else
	{
		Gps_Activate(playerid);
		StopAudioStreamForPlayer(playerid);
		switch(GetPVarInt(playerid, "pSpawns"))
		{
		    case 1:
		    {
		        SetPlayerPos(playerid, 1153.8118, -1768.6190, 16.5938);
          		SetPlayerInterior(playerid, false), SetPlayerVirtualWorld(playerid, false);
			}
			case 2:
			{
   				for(new i = 1; i <= TOTALHOUSE; ++i)
				{
					if(!strcmp(HouseInfo[i][hOwner],GetName(playerid),true))
					{
		                SetPVarInt(playerid, "PlayerHouse", i);
		   				if(GetPVarInt(playerid,"SpawnChange")) continue;
						SetPlayerInterior(playerid,HouseInfo[i][hInt][0]);
						SetPlayerVirtualWorld(playerid,HouseInfo[i][hInt][1]);
						SetPlayerPos(playerid,HouseInfo[i][hExit][0],HouseInfo[i][hExit][1],HouseInfo[i][hExit][2]);
						return true;
					}
				}
			}
			case 5:
			{
			    switch(GetPVarInt(playerid, "pMember"))
			    {
			        case 1..10: return 1;
			        case 11:
			        {
			            if(GetPVarInt(playerid, "pMember") == 11)
			    		{
			        		SetPlayerPos(playerid, 234.4603,111.8911,1003.2257);
			        		SetPlayerInterior(playerid, 10), SetPlayerVirtualWorld(playerid, false);
			    		}
			        }
			        case 18:
			        {
			            SetPlayerPos(playerid, 2337.8586, -1139.8269, 1054.3047);
			        	SetPlayerInterior(playerid, 12), SetPlayerVirtualWorld(playerid, false);
			        }
			        case 20:
			        {
			            SetPlayerPos(playerid, 944.7838, -45.5911, 1001.1166);
			        	SetPlayerInterior(playerid, 3), SetPlayerVirtualWorld(playerid, false);
			        }
			        
			    }
			}
		}
	}
	return true;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	if(OwnedVeh(vehicleid) != 0)
	{
	    VehicleInfo[OwnedVeh(vehicleid)][vColor1] = color1;
	    VehicleInfo[OwnedVeh(vehicleid)][vColor2] = color2;
	    SaveVehicles(OwnedVeh(vehicleid));
	}
	return true;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	DisablePlayerRaceCheckpoint(playerid);
	SavePlayer(playerid);
   	if(GetPVarInt(playerid,"GPS")) DeletePVar(playerid,"GPS");
   	if(GetPVarInt(playerid, "Cargo") > 0)
	{
		DeletePVar(playerid, "OldCargoSkin");
		DeletePVar(playerid, "Cargo");
	}
	if(GetPVarInt(playerid, "LessPil") > 0)
	{
	    DeletePVar(playerid, "OldLessSkin");
		DeletePVar(playerid, "LessPil");
		DeletePVar(playerid, "Wood");
		DeletePVar(playerid, "LessProc");
		DeletePVar(playerid, "LessStatus");
	}
	TextDrawHideForPlayer(playerid,ProcentDraw[playerid]);
	TextDrawHideForPlayer(playerid,AmountLDraw[playerid]);
	TextDrawHideForPlayer(playerid,AmountDraw[playerid]);
	return true;
}

public OnPlayerClickTextDraw(playerid, Text:clickedid)
{
    if(clickedid == Text:INVALID_TEXT_DRAW)
    {
        if(GetPVarInt(playerid, "pEsc") == 0)
        {
	    	SendClientMessage(playerid, COLOR_LIGHTRED, PlayerEscapeReg), KickFromServer(playerid);
		    for(new i = 0; i < 52; ++i) PlayerTextDrawHide(playerid, RegAuth[i]); // 21 < 52
			CancelSelectTextDraw(playerid);
			DestroySelectionMenu(playerid);
			//SetPVarInt(playerid, "skinc_active", 0);
			PlayerPlaySound(playerid, 1085, 0.0, 0.0, 0.0);
		}
    }
	if(GetPVarInt(playerid, "skinc_active") == 0) return 0;
	return false;
}

public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{
    /*if(playertextid == PlayerText:INVALID_TEXT_DRAW)
	{
	    SendClientMessage(playerid, COLOR_LIGHTRED, PlayerEscapeReg), KickFromServer(playerid);
	    for(new i = 0; i < 52; ++i) PlayerTextDrawHide(playerid, RegAuth[i]); // 21 < 52
		CancelSelectTextDraw(playerid);
		DestroySelectionMenu(playerid);
		//SetPVarInt(playerid, "skinc_active", 0);
		PlayerPlaySound(playerid, 1085, 0.0, 0.0, 0.0);
	}*/
	if(playertextid == RegAuth[36])
	{
	    ShowPlayerDialog(playerid, D_REG, d_Input, "{6699FF}Пароль", "{FFFFFF}Введите пароль для Вашего аккаунта\nОн будет запрашиваться каждый раз, при входе на сервер.\n\n\t{1DBF3A}ВАЖНО:\n\t- Пароль может состоять из русских и латинских символов\n\t- Пароль чувствителен к регистру\n\t- Длина пароля от 6-ти до 15-ти символов", "ОК","Назад");
	}
	if(playertextid == RegAuth[37])
	{
	    ShowPlayerDialog(playerid, D_REG+1, d_Input, "{6699FF}Электронная почта", "{FFFFFF}Введите адрес вашей электронной почты\nИспользуя его, Вы сможете восстановить доступ к аккаунту\nв случае взлома или если забудете пароль\nУбедитесь в правильности ввода и нажмите 'ОК'", "ОК", "Назад");
	    //ShowPlayerDialog(playerid, D_REG+1, d_Input, "{6699FF}Электронная почта", "{FFFFFF}Введите адрес вашей электронной почты\nИспользуя его, вы сможете восстановить доступ к аккаунту\nв случае взлома или если забудете пароль\n\n{6699FF}На email будет выслан код, который Вы должны\nввести в следующем окне для продолжения.\nУбедитесь в правильности ввода и нажмите 'ОК'", "ОК", "Назад");
	}
	if(playertextid == RegAuth[38])
	{
	    ShowPlayerDialog(playerid, D_REG+2, d_Box, "{6699FF}Пол", "{FFFFFF}Выберите пол вашему персонажу:", "Мужской", "Женский");
	}
	if(playertextid == RegAuth[39])
	{
	    ShowPlayerDialog(playerid, D_REG+4, d_Input, "{6699FF}Возраст", "{FFFFFF}Укажите игровой возраст вашего персонажа:\n\n{6699FF}Это повлияет на ход вашей игры.\nВозраст может быть от 18 до 65 лет\n\nВвод возраста влияет на принятие Вас в гильдию.\nИзменить возраст возможно только через 'Дополнительные возможности сервера'.","Готово", "Назад");
	}
	if(playertextid == RegAuth[40])
	{
	    SetPVarInt(playerid, "pEsc", 1);
		for(new i = 0; i < 52; ++i) PlayerTextDrawHide(playerid, RegAuth[i]); // 21 < 52
		CancelSelectTextDraw(playerid);
		if(!GetPVarInt(playerid, "pSex")) ShowPlayerDialog(playerid, D_REG+5, d_List , "{6699FF}Национальность","{FFFFFF}1. Японка\n2. Русская\n3. Итальянка\n4. Американка\n5. Афроамериканка\n6. Латиноамериканка\n", "Далее", "Назад");
		else ShowPlayerDialog(playerid, D_REG+5, d_List , "{6699FF}Национальность","{FFFFFF}1. Японец\n2. Русский\n3. Итальянец\n4. Американец\n5. Афроамериканец\n6. Латиноамериканец\n", "Далее", "Назад");
	}
	return true;
}

PlayerText:CreatePlayerHeaderTextDraw(playerid, Float:Xpos, Float:Ypos)
{
	new sinfo[64];
	format(sinfo,sizeof(sinfo),"TRANQUILIZATOR (%d / %d)", cDataInfo[playerid][pSlots], cDataInfo[playerid][pPack]*10);
	new PlayerText:txtInit;
	txtInit = CreatePlayerTextDraw(playerid, Xpos, Ypos, sinfo);
	PlayerTextDrawUseBox(playerid, txtInit, 0);
	PlayerTextDrawLetterSize(playerid, txtInit, 0.35, 2.0);
	PlayerTextDrawFont(playerid, txtInit, 1);
	PlayerTextDrawSetShadow(playerid, txtInit, 0);
	PlayerTextDrawSetOutline(playerid, txtInit, 1);
	PlayerTextDrawColor(playerid, txtInit, 0xa8902fFF);
	PlayerTextDrawShow(playerid, txtInit);
	return txtInit;
}

PlayerText:CreatePlayerBackgroundTextDraw(playerid, Float:Xpos, Float:Ypos, Float:Width, Float:Height)
{
	new PlayerText:txtBackground = CreatePlayerTextDraw(playerid, Xpos, Ypos,
	"                                            ~n~");
	PlayerTextDrawUseBox(playerid, txtBackground, 1);
	PlayerTextDrawBoxColor(playerid, txtBackground, 0x3d3d3dBB);
	PlayerTextDrawLetterSize(playerid, txtBackground, 5.0, 5.0);
	PlayerTextDrawFont(playerid, txtBackground, 0);
	PlayerTextDrawSetShadow(playerid, txtBackground, 0);
	PlayerTextDrawSetOutline(playerid, txtBackground, 0);
	PlayerTextDrawColor(playerid, txtBackground,0x000000FF);
	PlayerTextDrawTextSize(playerid, txtBackground, Width, Height);
	PlayerTextDrawBackgroundColor(playerid, txtBackground, 0x3d3d3dBB);
	PlayerTextDrawShow(playerid, txtBackground);
	return txtBackground;
}

PlayerText:CreateCurrentPageTextDraw(playerid, Number, Float:Xpos, Float:Ypos)
{
	new PlayerText:txtInit;
	new strh[16];
	format(strh, sizeof(strh), "x%d", Number);
	txtInit = CreatePlayerTextDraw(playerid, Xpos, Ypos, strh);
	PlayerTextDrawUseBox(playerid, txtInit, 0);
	PlayerTextDrawLetterSize(playerid, txtInit, 0.4, 0.8);
	PlayerTextDrawFont(playerid, txtInit, 1);
	PlayerTextDrawSetShadow(playerid, txtInit, 0);
	PlayerTextDrawSetOutline(playerid, txtInit, 1);
	PlayerTextDrawColor(playerid, txtInit, 0xffffffFF);
	PlayerTextDrawShow(playerid, txtInit);
	return txtInit;
}

ShowPlayerModelPreviews(playerid)
{
	new Float:BaseX = DIALOG_BASE_X;
	new Float:BaseY = DIALOG_BASE_Y - (SPRITE_DIM_Y * 0.33);
	new linetracker = 0;
	DestroyPlayerModelPreviews(playerid);
	new adm = 0;
	for(new slot;slot<INVNUMBERS;slot++)
	{
		if(PlayerInv[playerid][slot] > 0 && slot != 0)
		{
			if(linetracker == 0)
			{
				BaseX = DIALOG_BASE_X + 25.0;
				BaseY += SPRITE_DIM_Y + 1.0;
			}
			gItemsNumber[playerid][adm] = CreateCurrentPageTextDraw(playerid, PlayerInv[playerid][slot], BaseX, BaseY);
			BaseX += SPRITE_DIM_X + 1.0;
			linetracker++;
			if(linetracker == ITEMS_PER_LINE) linetracker = 0;
			adm ++;
		}
	}
}

DestroyPlayerModelPreviews(playerid)
{
	new x = 0;
	while(x != INVNUMBERS)
	{
		if(gSelectionItems[playerid][x] != PlayerText:INVALID_TEXT_DRAW)
		{
			PlayerTextDrawDestroy(playerid, gSelectionItems[playerid][x]);
			PlayerTextDrawDestroy(playerid, gItemsNumber[playerid][x]);
			gSelectionItems[playerid][x] = PlayerText:INVALID_TEXT_DRAW;
			gItemsNumber[playerid][x] = gItemsNumber[playerid][x];
		}
		x++;
	}
}

DestroySelectionMenu(playerid)
{
	DestroyPlayerModelPreviews(playerid);

	PlayerTextDrawDestroy(playerid, gHeaderTextDrawId[playerid]);
	PlayerTextDrawDestroy(playerid, gBackgroundTextDrawId[playerid]);
	PlayerTextDrawDestroy(playerid, gCurrentPageTextDrawId[playerid]);

	gHeaderTextDrawId[playerid] = PlayerText:INVALID_TEXT_DRAW;
	gBackgroundTextDrawId[playerid] = PlayerText:INVALID_TEXT_DRAW;
	gCurrentPageTextDrawId[playerid] = PlayerText:INVALID_TEXT_DRAW;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	if(IsTaxiCar(vehicleid) && TaxiJobStarted[playerid] && GetPlayerRentTaxi[playerid] == vehicleid)
	{
	    new Float:hp;
	    GetVehicleHealth(vehicleid, hp);
	    if(hp < 250) return 1;
	    PlayerExitCount[playerid] = 10;
    	SendClientMessage(playerid, -1, "{B5E01B}[M] Вернитесь обратно в скотовозку.");
    	ExitCarTimer[playerid] = SetTimerEx("OnPlayerExitCar", 1000, true, "i", playerid);
		return true;
	}
	if(IsTaxiCar(vehicleid) && PlayerTaxiStarted[GetPlayerCarDriver(playerid)] && PlayerEnteredPoint[playerid])
	{
   		new t_str[128];
	    DisablePlayerCheckpoint(GetPlayerCarDriver(playerid));
		DisablePlayerCheckpoint(playerid);
		GivePlayerMoney(playerid, -GetPriceTaxiEx(playerid));
		GivePlayerMoney(GetPlayerCarPass(playerid), GetPriceTaxiEx(playerid));
		format(t_str, sizeof(t_str), "~g~+%d$", GetPriceTaxiEx(playerid));
		GameTextForPlayer(GetPlayerCarDriver(playerid), t_str, 1000, 1);
		format(t_str, sizeof(t_str), "~r~-%d$", GetPriceTaxiEx(playerid));
		GameTextForPlayer(playerid, t_str, 1000, 1);
		new name[24];GetPlayerName(playerid, name, 24);
   		format(t_str, sizeof(t_str), "{B5E01B}[W] Пассажир %s покинул скотовозку раньше, чем было положено.", name);
		SendClientMessage(GetPlayerCarDriver(playerid), -1, t_str);
		SendClientMessage(playerid, -1, "{B5E01B}[W] Игрок покинул такси раньше, чем было положено.");
		PlayerTaxiStarted[GetPlayerCarDriver(playerid)] = false;
		for(new i=0; i<MAX_TAXI; i++)
		{
			if(TAXI_ID[i] == GetPlayerVehicleID(GetPlayerCarDriver(playerid)))
			{
		        Update3DTextLabelText(TAXI_TEXT[i], 0xDEF200FF, "[{FFFFFF}Скотовозка{DEF200}]\n{13EB3A}свободно");
		        break;
		    }
		}
		return true;
	}
	return true;
}

public OnVehicleDeath(vehicleid, killerid)
{
    if(OwnedVeh(vehicleid) != 0)
	{
		DestroyVehicle(vehicleid);
		new Vehicles = CreateVehicle(VehicleInfo[OwnedVeh(vehicleid)][vModel], VehicleInfo[OwnedVeh(vehicleid)][vPosX], VehicleInfo[OwnedVeh(vehicleid)][vPosY], VehicleInfo[OwnedVeh(vehicleid)][vPosZ], VehicleInfo[OwnedVeh(vehicleid)][vPosA], VehicleInfo[OwnedVeh(vehicleid)][vColor1], VehicleInfo[OwnedVeh(vehicleid)][vColor2], 500000);
        SetVehicleNumberPlate( Vehicles, VehicleInfo[OwnedVeh(vehicleid)][vPlate]);
	}
	for(new i=0; i<MAX_PLAYERS; i++)
	{
	    if(IsPlayerConnected(i) && GetPlayerRentTaxi[i] == vehicleid)
		{
			SendClientMessage(i, -1, "0{E63030}[W] Ваша скотовозка была уничтожена. Помянем её.");
	  		KillTimer(ExitCarTimer[i]);
			GetPlayerRentTaxi[i] = INVALID_VEHICLE_ID;
			TaxiJobStarted[i] = false;
			PlayerTaxiStarted[i] = false;
			for(new d=0; d<MAX_PLAYERS; d++)
			{
	    		if(IsPlayerConnected(d) && PlayerCalledTaxi[d]) RemovePlayerMapIcon(i, d);
	  		}
			break;
    	}
	}
	return true;
}

public OnPlayerEnterCheckpoint(playerid)
{
	if(IsPlayerInDynamicCP(playerid, Invite_JOB[playerid])) Jobs_Invite(playerid);
	if(GetPVarInt(playerid, "Cargo") > 0 && GetPVarInt(playerid, "CargoYes") < 1 && IsPlayerInRangeOfPoint(playerid, 1.4, 2231.0959,-2285.3909,14.3751))
	{
	    if(GetPVarInt(playerid,"FloodCargo") > gettime()) return true;
	    DisablePlayerCheckpoint(playerid);
	    ClearAnimations(playerid);
		TOTALCARGO -= 1;
		lines = "";
		format(lines, 128, "Мешков: {e2ba00}%d из 500", TOTALCARGO);
	    Update3DTextLabelText(CargoText[0], -1, lines);
		SendClientMessage(playerid, -1, "[W] Вы взяли мешок с продуктами. Отнесите его на склад");
		SetPVarInt(playerid, "CargoYes", 1);
		SetPVarInt(playerid,"FloodCargo", gettime() + 15);
		ApplyAnimation(playerid,"CARRY","crry_prtial",4.1,0,1,1,1,1);
		SetPlayerAttachedObject(playerid, 2, 2060, 5, 0.01, 0.1, 0.2, 100, 10, 85);
		SetPlayerCheckpoint(playerid,2172.5432,-2255.7092,13.3042,1.4);
    	return true;
	}
	if(GetPVarInt(playerid, "Cargo") > 0 && GetPVarInt(playerid, "CargoYes") > 0 && IsPlayerInRangeOfPoint(playerid, 1.4, 2172.5432,-2255.7092,13.3042))
	{
	    if(TOTALCARGO <= 0)
		{
			DisablePlayerCheckpoint(playerid),SendClientMessage(playerid, COLOR_YELLOW, "[W] В вагоне закончились мешки.");
			ClearAnimations(playerid);
			ApplyAnimation(playerid,"PED","IDLE_tired",4.1,0,1,1,0,1);
			RemovePlayerAttachedObject(playerid,2);
			return true;
		}
	    DisablePlayerCheckpoint(playerid);
        RemovePlayerAttachedObject(playerid,2);
		SetPlayerCheckpoint(playerid,2231.0959,-2285.3909,14.3751,1.4);
		SetPVarInt(playerid, "CargoYes",0);
		cDataInfo[playerid][pJobAmount][1]++;
		ClearAnimations(playerid);
		ApplyAnimation(playerid,"PED","IDLE_tired",4.1,0,1,1,0,1);
    	return true;
	}
	new vehicleid = GetPlayerVehicleID(playerid);
	if(PlayerTaxiStarted[playerid] && IsTaxiCar(vehicleid))
	{
	    new z_str[128];
	    DisablePlayerCheckpoint(GetPlayerCarPass(playerid));
		DisablePlayerCheckpoint(playerid);
		TogglePlayerControllable(playerid, false);
		SetTimerEx("OnPlayerFinishedRace", 700, false, "i", playerid);
		ShowPlayerDialog(GetPlayerCarPass(playerid), D_TD+4, DIALOG_STYLE_LIST, "{AFE01B}Уровень обслуживания", "\
		1. Отлично\n2. Хорошо\n3. Плохо\n4. Ужасно", "Выбрать", "Выход");
		SendClientMessage(playerid, -1, "{B5E01B}[M] Вы достигли места назначения.");
		SendClientMessage(GetPlayerCarPass(playerid), -1, "{B5E01B}[M] Вы достигли места назначения.");
		GivePlayerMoney(playerid, GetPriceTaxi(playerid));
		GivePlayerMoney(GetPlayerCarPass(playerid), -GetPriceTaxi(playerid));
		format(z_str, sizeof(z_str), "~g~+%d$", GetPriceTaxi(playerid));
		GameTextForPlayer(playerid, z_str, 1000, 1);
		format(z_str, sizeof(z_str), "~r~-%d$", GetPriceTaxi(playerid));
		GameTextForPlayer(GetPlayerCarPass(playerid), z_str, 1000, 1);
		PlayerTaxiStarted[playerid] = false;
		for(new i=0; i<MAX_TAXI; i++)
		{
			if(TAXI_ID[i] == GetPlayerVehicleID(playerid))
			{
		        Update3DTextLabelText(TAXI_TEXT[i], 0xDEF200FF, "[{FFFFFF}Скотовозка{DEF200}]\n{13EB3A}свободно");
		        break;
		    }
		}
	}
	if(GetPVarInt(playerid, "LessPil") > 0 && IsPlayerInRangeOfPoint(playerid, 3.0, -749.0853,-121.2919,66.0043))
	{
	    DisablePlayerCheckpoint(playerid);
	    RemovePlayerAttachedObject(playerid,3);
	    new rand = 30 + random(50);
	    cDataInfo[playerid][pJobAmount][2] += rand;
	    lines = ""; format(lines,30,"+%d",rand);
	    ClearAnimations(playerid); ApplyAnimation(playerid,"PED","IDLE_tired",4.1,0,1,1,0,1);
	    DeletePVar(playerid, "Wood");
	    SetPVarInt(playerid, "LessProc", 0);
	    SetPVarInt(playerid, "LessStatus", 0);
	    TextDrawShowForPlayer(playerid, ProcentDraw[playerid]);
		SetPVarInt(playerid, "Wood", TOTALTREE);
		TOTALTREE++;
		SetPlayerCheckpoint(playerid, Wood[GetPVarInt(playerid, "Wood")][0], Wood[GetPVarInt(playerid, "Wood")][1], Wood[GetPVarInt(playerid, "Wood")][2], 3.0);
		return true;
	}
	return true;
}

public OnPlayerEnterDynamicCP(playerid, checkpointid)
{
/*1. Агенство недвижимости\n2. Центральный банк\n3. Пригородный банк\n4. Кондитерская\n5. Магазин игрушек
6. Продуктовый магазин\n7. Компьютерный центр\n8. Клуб Alhambra\n9. Ресторан\n10. Автосалон
11. Автошкола\n12. Магазин оружия\n13. Магазин одежды Binco\n14. Магазин одежды DS\n15. Пиццерия
16. Пончиковая\n17. Фаст-фуд Burger Shot\n18. Магазин очков
19. Магазин телефонов\n20. Лаборатория\n21. Ритуальные услуги
22. Парикмахерская\n23. Салон татуировок*/
    for(new idx = 1; idx <= TOTALBIZZ;idx++)
	{
 		if(checkpointid == BizzInfo[idx][bMenu])
 		{
			if(BizzInfo[idx][bType] == 1) ReagncyeList(playerid, idx);
			if(BizzInfo[idx][bType] == 2) BanksList(playerid, idx);
			if(BizzInfo[idx][bType] == 3) BanksList(playerid, idx);
			if(BizzInfo[idx][bType] == 4) CandyList(playerid, idx);
			if(BizzInfo[idx][bType] == 5) ToyList(playerid, idx);
			if(BizzInfo[idx][bType] == 6) HomeList(playerid, idx);
			if(BizzInfo[idx][bType] == 7) HomeList(playerid, idx);
			if(BizzInfo[idx][bType] == 8) DrinkList(playerid, idx);
			if(BizzInfo[idx][bType] == 9) HomeList(playerid, idx);
			if(BizzInfo[idx][bType] == 10) HomeList(playerid, idx);
			if(BizzInfo[idx][bType] == 11) DriveList(playerid, idx);
			if(BizzInfo[idx][bType] == 12) GunzList(playerid, idx);
			if(BizzInfo[idx][bType] == 13) HomeList(playerid, idx);
			if(BizzInfo[idx][bType] == 14) HomeList(playerid, idx);
			if(BizzInfo[idx][bType] == 15) HomeList(playerid, idx);
			if(BizzInfo[idx][bType] == 16) HomeList(playerid, idx);
			if(BizzInfo[idx][bType] == 17) HomeList(playerid, idx);
			if(BizzInfo[idx][bType] == 18) HomeList(playerid, idx);
			if(BizzInfo[idx][bType] == 19) HomeList(playerid, idx);
			if(BizzInfo[idx][bType] == 20) HomeList(playerid, idx);
		}
	}
	return true;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
    if(pickupid == CargoPick[0])
	{
	    if(GetPVarInt(playerid, "Cargo") == 1) return ShowPlayerDialog(playerid, D_WORK+6, d_Box, "{6699FF}Грузчики", "{FFFFFF}Вы хотите завершить работу?", "Да", "Нет");
	    if(ghour == 0 || ghour == 3 || ghour == 6 || ghour == 9 || ghour == 12 || ghour == 15 || ghour == 18 || ghour == 21)
		{
		    if(TOTALCARGO <= 0) SendClientMessage(playerid, COLOR_WHITE, "[W] К сожалению, вагоны пустые. Приходите позже.");
			else if(GetPVarInt(playerid, "Cargo") == 0) ShowPlayerDialog(playerid, D_WORK+5, 0, "{6699FF}Грузчики", "{FFFFFF}Вы желаете поработать грузчиком?", "Да", "Нет");
		}
		else SendClientMessage(playerid,COLOR_WHITE,"[W] Сейчас нет работы, приходите позже.");
		return 1;
	}
    if(pickupid == LessPick[0])
	{
  		if(GetPVarInt(playerid, "LessPil") == 0) ShowPlayerDialog(playerid, D_WORK+2, d_Box, "{6699FF}Лесопилка", "{FFFFFF}Вы хотите начать работу на лесопилке?", "Да", "Нет");
		else ShowPlayerDialog(playerid, D_WORK+3, d_Box, "{6699FF}Лесопилка", "{FFFFFF}Вы хотите завершить работу на лесопилке?", "Да", "Нет");
		return true;
	}
	if(pickupid == ParcPick[0])
	{
	    ShowPlayerDialog(playerid, D_PARK, d_Box, "{6699FF}Оплата парковки", "\t\t\t{FFFFFF}ПАРКОВОЧНОЕ МЕСТО\n{FFFFFF}Каждый житель штата заботится о сохранности своего транспортного средства, для этого\nпредназначены специальные парковочные места, которые обеспечивают круглосуточную\nзащиту Вашего транспортного средства от нежелательных действий.\n\nСТОИМОСТЬ ПАРКОВКИ: 150$\n\n\tДЛЯ ТОГО, ЧТОБЫ ОПЛАТИТЬ ПАРКОВКУ НАЖМИТЕ 'ДА', ДЛЯ ОТМЕНЫ 'НЕТ'.", "Да", "Нет");
		return true;
	}
	if(pickupid == WoodP[GetPVarInt(playerid, "Wood")])
	{
	    ApplyAnimation(playerid,"CARRY","crry_prtial",4.1,0,1,1,1,1);
		SetPlayerAttachedObject(playerid,3,1463,5,0.045000,0.152000,0.217000,100.199966,-176.199951,102.500015,0.567000,0.327000,0.516000);
		SetPlayerCheckpoint(playerid,-749.0853,-121.2919,66.0043,3.0);
		SetPVarInt(playerid, "LessStatus", 1);
		SetPlayerArmedWeapon(playerid, 0);
		DestroyPickup(pickupid);
    	return true;
	}
    for(new idx = 1; idx <= TOTALBIZZ; idx++)
    {
    	if(pickupid == BizzInfo[idx][bPickup])
        {
  		   	if(!strcmp(BizzInfo[idx][bOwner], "None", true))
		  	{
		  	    SetPVarInt(playerid, "PlayerBizz", idx);
 				format(lines, 128, "{FFFFFF}Номер бизнеса:\t{6699FF}№%i\n{FFFFFF}Стоимость:\t\t{6699FF}%i\n\n{FFFFFF}Вы хотите войти в бизнес?",idx,BizzInfo[idx][bPrice]);
		  		if(BizzInfo[idx][bType] != 2) return ShowPlayerDialog(playerid, D_BUSINESS+1, d_Box, "{6699FF}Предприятие", lines, "Вход", "Выход");
		  	}
		  	else
		  	{
		  	    SetPVarInt(playerid, "PlayerBizz", idx);
		  	    if(BizzInfo[idx][bType] < 21)
		  	    {
		  	        if(BizzInfo[idx][bEnter] > 0) format(lines, 128, "{FFFFFF}Цена входа: %i долларов\n\nВы хотите войти в бизнес?", BizzInfo[idx][bEnter]);
		  	        else format(lines, 128, "{FFFFFF}Вход свободный\n\nВы хотите войти в бизнес?");
		  	        return ShowPlayerDialog(playerid, D_BUSINESS, d_Box, "{6699FF}Предприятие", lines, "Да", "Нет");
		  	    }
		  		if(BizzInfo[idx][bType] != 2) return ShowPlayerDialog(playerid, D_BUSINESS, d_Box, "{6699FF}Предприятие", "{FFFFFF}Вы хотите войти в бизнес?", "Да", "Нет");
		  	}
        }
        if(pickupid == BizzInfo[idx][bPickupExit] && BizzInfo[idx][bType] != 22)
        {
			SetPVarInt(playerid, "PlayerBizz", idx); return ShowPlayerDialog(playerid, D_BUSINESS+2, d_Box, "{6699FF}Предприятие", "{FFFFFF}Вы уверены что хотите покинуть бизнес?", "Да", "Нет");
		}
    }
	for(new i = 1; i <= TOTALHOUSE; ++i)
	{
    	if(pickupid == HouseInfo[i][hPickup])
    	{
    	    SetPVarInt(playerid, "PlayerHome", i);
	        if(!strcmp(HouseInfo[i][hOwner],"None", true))
	        {
	            format(lines, 100, "{FFFFFF}Номер дома:\t#%d\n\n{FFFFFF}Стоимость:\t%d\n{FFFFFF}Класс:\t\t%s", i, HouseInfo[i][hPrice], HouseInfo[i][hDiscript]);
                return ShowPlayerDialog(playerid, D_HOUSE, d_Box,"{6699FF}Дом", lines, "Купить", "Выход");
 			}
			else
			{
				format(lines, 100, "{FFFFFF}Номер дома:\t№%d\n\nВладелец:\t%s\nКласс:\t\t%s",i, HouseInfo[i][hOwner], HouseInfo[i][hDiscript]);
			    return ShowPlayerDialog(playerid, D_HOUSE, d_Box, "{6699FF}Дом", lines, "Войти", "Выход");
			}
    	}
    }
    for(new i; i <= TOTALENTERS; i++)
	{
	    if(pickupid == EntersInfo[i][pP])
	    {
			SetPlayerPos(playerid,EntersInfo[i][ptX],EntersInfo[i][ptY],EntersInfo[i][ptZ]);
	       	SetPlayerFacingAngle(playerid, EntersInfo[i][ptFa]);
   	    	SetPlayerInterior(playerid,EntersInfo[i][ptI]);
   	    	SetPlayerVirtualWorld(playerid,EntersInfo[i][ptV]);
   	    	break;
   		}
   	}
	return true;
}

public OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid)
{
	if(GetPVarInt(playerid, "LessPil") > 0 && GetPVarInt(issuerid, "LessPil") > 0 && weaponid == 9)
 	{
  		new Float:shealth,Float:slx, Float:sly, Float:slz;
	    GetPlayerHealth(issuerid, shealth);
		SetHealth(issuerid, shealth-10);
		GetPlayerPos(issuerid, slx, sly, slz);
		SetPlayerPos(issuerid, slx, sly, slz+10);
		PlayerPlaySound(issuerid, 1130, slx, sly, slz+10);
    	SetPlayerArmedWeapon(issuerid,0);
    	return true;
    }
    return true;
}

public OnPlayerEditObject(playerid, playerobject, objectid, response, Float:fX, Float:fY, Float:fZ, Float:fRotX, Float:fRotY, Float:fRotZ)
{
	new Float:old[3], Float:oldRot[3];
	GetObjectPos(objectid, old[0], old[1], old[2]); GetObjectRot(objectid, oldRot[0], oldRot[1], oldRot[2]);
	if(!playerobject) { if(!IsValidObject(objectid)) return; MoveObject(objectid, fX, fY, fZ, 10.0, fRotX, fRotY, fRotZ); }
	if(response == EDIT_RESPONSE_FINAL)
	{
		if(!playerobject)
		{
		    if(GetPVarInt(playerid, "ObjectATM") >= 1)
		    {
   		 		TOTALATM++;
				ATMInfo[TOTALATM][aX] = fX; ATMInfo[TOTALATM][aY] = fY; ATMInfo[TOTALATM][aZ] = fZ; ATMInfo[TOTALATM][arZ] = fRotZ;
	 			format(query, 255,"INSERT INTO "TABLE_ATM" (ID, X, Y, Z, FA) VALUES (%i,'%f','%f','%f','%f')",
			    TOTALATM,ATMInfo[TOTALATM][aX],ATMInfo[TOTALATM][aY],ATMInfo[TOTALATM][aZ], ATMInfo[TOTALATM][arZ]);
				mysql_function_query(Mysql, query, false, "", "");
				SendMes(playerid,COLOR_ORANGE,"[A] Вы установили терминал номер %i",TOTALATM);
				ATM[TOTALATM] = CreateObject(2754, fX, fY, fZ, fRotX, fRotY, fRotZ);
				LABELATM[TOTALATM] = CreateDynamic3DTextLabel("{6699FF}Терминал\n{C3C3C3}Нажмите ALT", COLOR_GREEN, ATMInfo[TOTALATM][aX], ATMInfo[TOTALATM][aY], ATMInfo[TOTALATM][aZ], 20.0);
				DeletePVar(playerid, "ObjectATM"), DeletePVar(playerid, "NearvehATM");
			}
		}
	}
	if(response == EDIT_RESPONSE_CANCEL)
	{
		if(!playerobject) SetObjectPos(objectid, old[0], old[1], old[2]), SetObjectRot(objectid, oldRot[0], oldRot[1], oldRot[2]);
		else SetPlayerObjectPos(playerid, objectid, old[0], old[1], old[2]), SetPlayerObjectRot(playerid, objectid, oldRot[0], oldRot[1], oldRot[2]);
	}
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	new Menu:Current = GetPlayerMenu(playerid);
	if(SkinMenu[0] == Current && GetPVarInt(playerid,"Clothes") == 1)
	{
		switch(row)
		{
			case 0:
			{
				if(GetPVarInt(playerid, "pSex"))
				{
				    switch(GetPVarInt(playerid, "Nation"))
					{
					    case 0: { if(GetPVarInt(playerid,"CharReg") >= 2) DeletePVar(playerid, "CharReg"); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")+1); }
					    case 1: { if(GetPVarInt(playerid,"CharReg") >= 5) SetPVarInt(playerid,"CharReg", 3); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")+1); }
					    case 2: { if(GetPVarInt(playerid,"CharReg") >= 8) SetPVarInt(playerid,"CharReg", 6); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")+1); }
					    case 3: { if(GetPVarInt(playerid,"CharReg") >= 11) SetPVarInt(playerid,"CharReg", 9); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")+1); }
					    case 4: { if(GetPVarInt(playerid,"CharReg") >= 14) SetPVarInt(playerid,"CharReg", 12); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")+1); }
					    case 5: { if(GetPVarInt(playerid,"CharReg") >= 17) SetPVarInt(playerid,"CharReg", 15); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")+1); }
					}
					SetPlayerSkin(playerid, JoinReg[GetPVarInt(playerid,"CharReg")][0]);
					SetPVarInt(playerid, "ChosenSkin", JoinReg[GetPVarInt(playerid,"CharReg")][0]);
				}
				else
				{
    				switch(GetPVarInt(playerid, "Nation"))
					{
					    case 0: { if(GetPVarInt(playerid,"CharReg") >= 19) SetPVarInt(playerid,"CharReg", 18); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")+1); }
					    case 1: { if(GetPVarInt(playerid,"CharReg") >= 21) SetPVarInt(playerid,"CharReg", 20); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")+1); }
					    case 2: { if(GetPVarInt(playerid,"CharReg") >= 23) SetPVarInt(playerid,"CharReg", 22); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")+1); }
					    case 3: { if(GetPVarInt(playerid,"CharReg") >= 25) SetPVarInt(playerid,"CharReg", 24); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")+1); }
					    case 4: { if(GetPVarInt(playerid,"CharReg") >= 27) SetPVarInt(playerid,"CharReg", 26); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")+1); }
					    case 5: { if(GetPVarInt(playerid,"CharReg") >= 29) SetPVarInt(playerid,"CharReg", 28); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")+1); }
					}
					SetPlayerSkin(playerid, JoinReg[GetPVarInt(playerid,"CharReg")][0]);
					SetPVarInt(playerid, "ChosenSkin", JoinReg[GetPVarInt(playerid,"CharReg")][0]);
				}
				ShowMenuForPlayer(SkinMenu[0],playerid);
			}
			case 1:
			{
				if(GetPVarInt(playerid, "pSex"))
				{
   					switch(GetPVarInt(playerid, "Nation"))
					{
					    case 0: { if(GetPVarInt(playerid,"CharReg") <= 0) SetPVarInt(playerid,"CharReg", 2); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")-1); }
					    case 1: { if(GetPVarInt(playerid,"CharReg") <= 3) SetPVarInt(playerid,"CharReg", 5); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")-1); }
					    case 2: { if(GetPVarInt(playerid,"CharReg") <= 6) SetPVarInt(playerid,"CharReg", 8); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")-1); }
					    case 3: { if(GetPVarInt(playerid,"CharReg") <= 9) SetPVarInt(playerid,"CharReg", 11); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")-1); }
					    case 4: { if(GetPVarInt(playerid,"CharReg") <= 12) SetPVarInt(playerid,"CharReg", 14); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")-1); }
					    case 5: { if(GetPVarInt(playerid,"CharReg") <= 15) SetPVarInt(playerid,"CharReg", 17); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")-1); }
					}
					SetPlayerSkin(playerid, JoinReg[GetPVarInt(playerid,"CharReg")][0]);
					SetPVarInt(playerid, "ChosenSkin", JoinReg[GetPVarInt(playerid,"CharReg")][0]);
				}
				else
				{
					switch(GetPVarInt(playerid, "Nation"))
					{
					    case 0: { if(GetPVarInt(playerid,"CharReg") <= 18) SetPVarInt(playerid,"CharReg", 19); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")-1); }
					    case 1: { if(GetPVarInt(playerid,"CharReg") <= 20) SetPVarInt(playerid,"CharReg", 21); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")-1); }
					    case 2: { if(GetPVarInt(playerid,"CharReg") <= 22) SetPVarInt(playerid,"CharReg", 23); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")-1); }
					    case 3: { if(GetPVarInt(playerid,"CharReg") <= 24) SetPVarInt(playerid,"CharReg", 25); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")-1); }
					    case 4: { if(GetPVarInt(playerid,"CharReg") <= 26) SetPVarInt(playerid,"CharReg", 27); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")-1); }
					    case 5: { if(GetPVarInt(playerid,"CharReg") <= 28) SetPVarInt(playerid,"CharReg", 29); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")-1); }
					}
					SetPlayerSkin(playerid, JoinReg[GetPVarInt(playerid,"CharReg")][0]);
					SetPVarInt(playerid, "ChosenSkin", JoinReg[GetPVarInt(playerid,"CharReg")][0]);
				}
				ShowMenuForPlayer(SkinMenu[1],playerid);
			}
			case 2:
			{
				SetPVarInt(playerid, "pModel", GetPVarInt(playerid, "ChosenSkin"));
				DeletePVar(playerid, "Nation");
				DeletePVar(playerid, "CharReg");
				DeletePVar(playerid, "Clothes");
				DeletePVar(playerid, "ChosenSkin");
				TogglePlayerControllable(playerid, true);
				if(GetPVarInt(playerid, "Temp") == 0)
				{
					CreateAccount(playerid, cDataInfo[playerid][pPassword]);
				}
				else if(GetPVarInt(playerid, "Temp") == 1)
				{
				    LoadAcc(playerid);
				}
				SetPVarInt(playerid, "Temp", 0);
				SpawnPlayer(playerid);
			}
		}
	}
	if(SkinMenu[1] == Current && GetPVarInt(playerid,"Clothes") == 1)
	{
		switch(row)
		{
			case 0:
			{
				if(GetPVarInt(playerid, "pSex"))
				{
   					switch(GetPVarInt(playerid, "Nation"))
					{
					    case 0: { if(GetPVarInt(playerid,"CharReg") <= 0) SetPVarInt(playerid,"CharReg", 2); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")-1); }
					    case 1: { if(GetPVarInt(playerid,"CharReg") <= 3) SetPVarInt(playerid,"CharReg", 5); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")-1); }
					    case 2: { if(GetPVarInt(playerid,"CharReg") <= 6) SetPVarInt(playerid,"CharReg", 8); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")-1); }
					    case 3: { if(GetPVarInt(playerid,"CharReg") <= 9) SetPVarInt(playerid,"CharReg", 11); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")-1); }
					    case 4: { if(GetPVarInt(playerid,"CharReg") <= 12) SetPVarInt(playerid,"CharReg", 14); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")-1); }
					    case 5: { if(GetPVarInt(playerid,"CharReg") <= 15) SetPVarInt(playerid,"CharReg", 17); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")-1); }
					}
					SetPlayerSkin(playerid, JoinReg[GetPVarInt(playerid,"CharReg")][0]);
					SetPVarInt(playerid, "ChosenSkin", JoinReg[GetPVarInt(playerid,"CharReg")][0]);
				}
				else
				{
					switch(GetPVarInt(playerid, "Nation"))
					{
					    case 0: { if(GetPVarInt(playerid,"CharReg") <= 18) SetPVarInt(playerid,"CharReg", 19); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")-1); }
					    case 1: { if(GetPVarInt(playerid,"CharReg") <= 20) SetPVarInt(playerid,"CharReg", 21); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")-1); }
					    case 2: { if(GetPVarInt(playerid,"CharReg") <= 22) SetPVarInt(playerid,"CharReg", 23); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")-1); }
					    case 3: { if(GetPVarInt(playerid,"CharReg") <= 24) SetPVarInt(playerid,"CharReg", 25); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")-1); }
					    case 4: { if(GetPVarInt(playerid,"CharReg") <= 26) SetPVarInt(playerid,"CharReg", 27); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")-1); }
					    case 5: { if(GetPVarInt(playerid,"CharReg") <= 28) SetPVarInt(playerid,"CharReg", 29); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")-1); }
					}
					SetPlayerSkin(playerid, JoinReg[GetPVarInt(playerid,"CharReg")][0]);
					SetPVarInt(playerid, "ChosenSkin", JoinReg[GetPVarInt(playerid,"CharReg")][0]);
				}
				ShowMenuForPlayer(SkinMenu[1],playerid);
			}
			case 1:
			{
				if(GetPVarInt(playerid, "pSex"))
				{
				    switch(GetPVarInt(playerid, "Nation"))
					{
					    case 0: { if(GetPVarInt(playerid,"CharReg") >= 2) DeletePVar(playerid, "CharReg"); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")+1); }
					    case 1: { if(GetPVarInt(playerid,"CharReg") >= 5) SetPVarInt(playerid,"CharReg", 3); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")+1); }
					    case 2: { if(GetPVarInt(playerid,"CharReg") >= 8) SetPVarInt(playerid,"CharReg", 6); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")+1); }
					    case 3: { if(GetPVarInt(playerid,"CharReg") >= 11) SetPVarInt(playerid,"CharReg", 9); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")+1); }
					    case 4: { if(GetPVarInt(playerid,"CharReg") >= 14) SetPVarInt(playerid,"CharReg", 12); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")+1); }
					    case 5: { if(GetPVarInt(playerid,"CharReg") >= 17) SetPVarInt(playerid,"CharReg", 15); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")+1); }
					}
					SetPlayerSkin(playerid, JoinReg[GetPVarInt(playerid,"CharReg")][0]);
					SetPVarInt(playerid, "ChosenSkin", JoinReg[GetPVarInt(playerid,"CharReg")][0]);
				}
				else
				{
					switch(GetPVarInt(playerid, "Nation"))
					{
					    case 0: { if(GetPVarInt(playerid,"CharReg") >= 19) SetPVarInt(playerid,"CharReg", 18); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")+1); }
					    case 1: { if(GetPVarInt(playerid,"CharReg") >= 21) SetPVarInt(playerid,"CharReg", 20); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")+1); }
					    case 2: { if(GetPVarInt(playerid,"CharReg") >= 23) SetPVarInt(playerid,"CharReg", 22); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")+1); }
					    case 3: { if(GetPVarInt(playerid,"CharReg") >= 25) SetPVarInt(playerid,"CharReg", 24); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")+1); }
					    case 4: { if(GetPVarInt(playerid,"CharReg") >= 27) SetPVarInt(playerid,"CharReg", 26); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")+1); }
					    case 5: { if(GetPVarInt(playerid,"CharReg") >= 29) SetPVarInt(playerid,"CharReg", 28); else SetPVarInt(playerid,"CharReg", GetPVarInt(playerid,"CharReg")+1); }
					}
					SetPlayerSkin(playerid, JoinReg[GetPVarInt(playerid,"CharReg")][0]);
					SetPVarInt(playerid, "ChosenSkin", JoinReg[GetPVarInt(playerid,"CharReg")][0]);
				}
				ShowMenuForPlayer(SkinMenu[0],playerid);
			}
			case 2:
			{
				SetPVarInt(playerid, "pModel", GetPVarInt(playerid, "ChosenSkin"));
				DeletePVar(playerid, "Nation");
				DeletePVar(playerid, "CharReg");
				DeletePVar(playerid, "Clothes");
				DeletePVar(playerid, "ChosenSkin");
				TogglePlayerControllable(playerid, true);
				if(GetPVarInt(playerid, "Temp") == 0)
				{
					CreateAccount(playerid, cDataInfo[playerid][pPassword]);
				}
				else if(GetPVarInt(playerid, "Temp") == 1)
				{
				    LoadAcc(playerid);
				}
				SetPVarInt(playerid, "Temp", 0);
				SpawnPlayer(playerid);
			}
		}
	}
	return true;
}

public OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ)
{
	if(!PlayerEnteredPoint[playerid])
	{
	    GetPlayerPos(GetPlayerCarDriver(playerid), FIRSTPOS[GetPlayerCarDriver(playerid)][0], FIRSTPOS[GetPlayerCarDriver(playerid)][1], FIRSTPOS[GetPlayerCarDriver(playerid)][2]);
	    GetPlayerPos(playerid, FIRSTPOS[playerid][0], FIRSTPOS[playerid][1], FIRSTPOS[playerid][2]);
	    LASTPOS[playerid][0] = fX;LASTPOS[GetPlayerCarDriver(playerid)][0] = fX;
	    LASTPOS[playerid][1] = fY;LASTPOS[GetPlayerCarDriver(playerid)][1] = fY;
	    LASTPOS[playerid][2] = fZ;LASTPOS[GetPlayerCarDriver(playerid)][2] = fZ;
	    new psoobsh[256];
	    format(psoobsh, sizeof(psoobsh), "{00FFFF}\
		Пункт назначения:{FFFFFF} %s\n\
		{00FFFF}Стоимость проезда:{FFFFFF} %d$\n\
		{999999}Чтобы сменить пункт назначения\n\
		нажми на кнопку 'Назад'\
		", GetPlayerPoint(playerid), GetPriceTaxi(GetPlayerCarDriver(playerid)));
		ShowPlayerDialog(playerid, D_TD+1, DIALOG_STYLE_MSGBOX, "Информация", psoobsh, "Готово", "Назад");
	}
	return true;
}

public OnPlayerUpdate(playerid)
{
    if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER) UpdateSpeed(playerid);
    if(GetPVarInt(playerid,"Cargo") > 0)
    {
	    spect = "";
		format(spect, 24, "AMOUNT: %d", cDataInfo[playerid][pJobAmount][1]);
		TextDrawSetString(AmountDraw[playerid],spect);
		if(!strcmp(animlib_2[playerid], "PED", true) && !strcmp(animname_2[playerid], "FALL_GLIDE", true) && GetPVarInt(playerid,"CargoYes") == 1)
		{
            if(TOTALCARGO <= 0)
			{
			    DisablePlayerCheckpoint(playerid);
	        	RemovePlayerAttachedObject(playerid,2);
	        	ClearAnimations(playerid);
				ApplyAnimation(playerid,"PED","IDLE_tired",4.1,0,1,1,0,1);
				SendClientMessage(playerid, COLOR_GREY, "[W] В вагонах больше нет мешков.");
			    return true;
			}
		}
	}
	else TextDrawHideForPlayer(playerid, AmountDraw[playerid]);
   	if(GetPVarInt(playerid,"LessPil") > 0)
    {
		if(GetPVarInt(playerid,"LessProc") > 100) return true;
	    spect = "";
		format(spect,24,"PROCENT: %d%",GetPVarInt(playerid,"LessProc"));
		TextDrawSetString(ProcentDraw[playerid],spect);

		spect = "";
		format(spect,24,"AMOUNT: %d KG", cDataInfo[playerid][pJobAmount][2]);
		TextDrawSetString(AmountLDraw[playerid],spect);
	}
	else
	{
	    TextDrawHideForPlayer(playerid, ProcentDraw[playerid]);
	    TextDrawHideForPlayer(playerid, AmountLDraw[playerid]);
	}
	new Float:POS[3],vehicleid = GetPlayerVehicleID(playerid);
	if(TaxiJobStarted[playerid] && IsTaxiCar(vehicleid) && GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
	{
	    for(new i=0; i<MAX_PLAYERS; i++)
	    {
			if(IsPlayerConnected(i) && PlayerCalledTaxi[i])
			{
				GetPlayerPos(i, POS[0], POS[1], POS[2]);
				SetPlayerMapIcon(playerid, i, POS[0], POS[1], POS[2], 0, 0xF0F000FF, MAPICON_GLOBAL);
			}
		}
	}
	if(GetPVarInt(playerid,"LessProc") >= 100)
	{
	    MoveObject(gWood[GetPVarInt(playerid,"Wood")], Wood[GetPVarInt(playerid, "Wood")][0], Wood[GetPVarInt(playerid, "Wood")][1], Wood[GetPVarInt(playerid, "Wood")][2]+0.004,0.004, 0.00000000,90.00000000,0.00000000);
        SetPVarInt(playerid, "LessProc", 0);
        TextDrawHideForPlayer(playerid, ProcentDraw[playerid]);
		WoodTimer[playerid] = SetTimerEx("GatWood",2000,false,"i",playerid);
	}
	return true;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	// Global Position System
    if(GetPVarInt(playerid,"GPS"))
	{
		KillTimer(pNavTimer[playerid]);
		DestroyDynamicObject(ok[playerid]);
		for(new i; i<sizeof(NAVTD); i++) TextDrawHideForPlayer(playerid, NAVTD[i]);
		PlayerTextDrawHide(playerid, NAVpTD[playerid]);
		DisablePlayerCheckpoint(playerid);
		SetPVarInt(playerid, "GPS", 0);
		SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Глобальная позиционная система отключена, так как Вы покинули транспорт.");
	}
	//
	switch(newstate)
	{
	    case 2: for(new i; i < 22; ++i) TextDrawShowForPlayer(playerid, Speed[playerid][i]);
	    default: for(new i; i < 22; ++i) TextDrawHideForPlayer(playerid, Speed[playerid][i]);
	}
	if(newstate == PLAYER_STATE_DRIVER)
	{
	    if(OwnedVeh(GetPlayerVehicleID(playerid)) != 0)
	    {
	        if(strmatch(VehicleInfo[OwnedVeh(GetPlayerVehicleID(playerid))][vOwner], "None"))
	        {
		        format(Car, sizeof(Car), "{FFFFFF}Тип автомобиля:\tСредний\nСтоимость покупки: %i$\n\nДля покупки этой модели нажмите ''Купить''", VehicleInfo[OwnedVeh(GetPlayerVehicleID(playerid))][vPrice]);
		        ShowPlayerDialog(playerid, D_AUTO, d_Box, "{6699FF}Автосалон", Car, "Купить", "Выход");
		        TogglePlayerControllable(playerid, false);
			}
			else if(strmatch(VehicleInfo[OwnedVeh(GetPlayerVehicleID(playerid))][vOwner], GetName(playerid))) return true;
			else
			{
			    format(Car, sizeof(Car), "[V] Транспорт зарезервирован на: {6699FF}%s", VehicleInfo[OwnedVeh(GetPlayerVehicleID(playerid))][vOwner]);
                SendClientMessage(playerid, COLOR_WHITE, Car);
				RemovePlayerFromVehicle(playerid);
			}
			
		}
	}
    new zrsr[192], vehicleid = GetPlayerVehicleID(playerid), bool:onepass;
	if(newstate == PLAYER_STATE_DRIVER && IsTaxiCar(vehicleid))
  	{
	   	if(GetPlayerRentTaxi[playerid] != vehicleid)
		{
   			format(zrsr, sizeof(zrsr), "{FFFFFF}\
  			Чтобы работать водителем скотовозки, Вам нужно её арендовать.\n\
			Цена аренды: {CECECE}%d$\
			", TAXI_PRICERENT);
	   		ShowPlayerDialog(playerid, D_TD, DIALOG_STYLE_MSGBOX, "{AFE01B}Аренда скотовозки", zrsr, "Да", "Нет");
			PlayerRentTaxi[playerid] = true;
			TaxiDialogTimer[playerid] = SetTimerEx("OnPlayerShowTaxiDialog", 1000, true, "i", playerid);
		}
  		else
		{
			KillTimer(ExitCarTimer[playerid]);
		}
    }
	if(newstate == PLAYER_STATE_PASSENGER && IsTaxiCar(vehicleid) && GetPlayerRentTaxi[playerid] != vehicleid)
	{
	    new bool:owned;
	   	for(new i=0; i<MAX_PLAYERS; i++)
		{
   			if(IsPlayerConnected(i) && IsPlayerInVehicle(i, vehicleid) && GetPlayerVehicleSeat(i) == 0 && GetPlayerRentTaxi[i] == vehicleid && TaxiJobStarted[i])
  			{
			   	owned = true;
			   	break;
   			}
   		}
	    if(!owned) return RemovePlayerFromVehicle(playerid);
	   	for(new i; i < MAX_PLAYERS; i++)
		{
   			if(IsPlayerConnected(i) && IsPlayerInVehicle(i, vehicleid) && GetPlayerVehicleSeat(i) != 0 && i != playerid)
  			{
			   	onepass = true;
			   	break;
   			}
   		}
		if(PlayerCalledTaxi[playerid])
		{
			PlayerCalledTaxi[playerid] = false;
			for(new i=0; i<MAX_PLAYERS; i++)
			{
	    		if(IsPlayerConnected(i) && TaxiJobStarted[i]) RemovePlayerMapIcon(i, playerid);
	  		}
	  	}
		if(onepass)
		{
			format(zrsr, sizeof(zrsr), "{B5E01B}[W] К Вам в скотовозку сел пассажир %s", GetName(playerid));
			SendClientMessage(GetPlayerCarDriver(playerid), -1, zrsr);
			return 1;
		}
   		PlayerEnteredPoint[playerid] = false;
		format(zrsr, sizeof(zrsr), "{B5E01B}[W] К Вам в скотовозку сел пассажир %s (Подождите пока он выберет маршрут)", GetName(playerid));
		SendClientMessage(GetPlayerCarDriver(playerid), -1, zrsr);
		ShowPlayerDialog(playerid, D_TD+7, d_Box, "{AFE01B}Информация", "\
		{FFFFFF}Установите маркер на карте в то место,\n\
		в которое Вам необходимо отправиться.", "Закрыть", "");
	}
	return true;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(PRESSED(KEY_SECONDARY_ATTACK) && g_ElevData[e_ElevState] == ELEVSTATE_OPEN)
	{
        for(new floor; floor < MAX_ELEVFLOORS; floor ++)
		{
            if(IsPlayerInDynamicArea(playerid, g_ElevData[e_ElevDynArea][floor]))
			{
                g_ElevData[e_ElevState] = ELEVSTATE_CLOSING;
                ApplyElevatorState();
                break;
            }
        }
    }
    if(!GetPVarInt(playerid,"Logged")) return true;
    if(GetPVarInt(playerid, "LessPil") == 1 && PRESSED(KEY_FIRE))
	{
	    if(IsPlayerInRangeOfPoint(playerid, 2.5, Wood[GetPVarInt(playerid, "Wood")][0], Wood[GetPVarInt(playerid, "Wood")][1], Wood[GetPVarInt(playerid, "Wood")][2]))
		{
			if(!strcmp(animlib_2[playerid], "CHAINSAW", true) && !strcmp(animname_2[playerid], "CSAW_1", true) || !strcmp(animlib_2[playerid], "CHAINSAW", true) && !strcmp(animname_2[playerid], "CSAW_2", true))
			{
				SetPVarInt(playerid, "LessProc", GetPVarInt(playerid, "LessProc") + 4);
				return true;
			}
		}
	}
	if(newkeys & 16)
	{
	    if(GetPVarInt(playerid, "Clothes") > 0)
	    {
	    	ShowMenuForPlayer(SkinMenu[0],playerid);
		}
	}
	if(PRESSED(KEY_FIRE) || PRESSED(KEY_HANDBRAKE) || PRESSED(KEY_CROUCH) || PRESSED(KEY_ACTION))
    {
       	if(GetPVarInt(playerid,"Cargo") > 0 && GetPVarInt(playerid,"CargoYes") > 0 && IsPlayerAttachedObjectSlotUsed(playerid, 2))
        {
            ClearAnimations(playerid);
        	ApplyAnimation(playerid,"CARRY","crry_prtial",4.1,0,1,1,1,1);
		}
    }
    else if(newkeys & KEY_JUMP && !(oldkeys & KEY_JUMP) && GetPlayerSpecialAction(playerid) == SPECIAL_ACTION_CUFFED) ApplyAnimation(playerid, "GYMNASIUM", "gym_jog_falloff",4.1,0,1,1,0,0);
	if(PRESSED(KEY_SECONDARY_ATTACK) || PRESSED(KEY_JUMP) || PRESSED(KEY_SPRINT))
    {
        if(GetPVarInt(playerid,"LessPil") > 0 && GetPVarInt(playerid,"LessStatus") > 0 && IsPlayerAttachedObjectSlotUsed(playerid, 3))
        {
			SendClientMessage(playerid, -1, "[W] Вы уронили срубленые бруски.");
            DisablePlayerCheckpoint(playerid);
	        RemovePlayerAttachedObject(playerid,3);
			ClearAnimations(playerid);
			ApplyAnimation(playerid,"PED","IDLE_tired",4.1,0,1,1,0,1);
			DeletePVar(playerid, "Wood");
		    SetPVarInt(playerid, "LessProc", 0);
		    SetPVarInt(playerid, "LessStatus", 0);
		    TextDrawShowForPlayer(playerid, ProcentDraw[playerid]);
			SetPVarInt(playerid, "Wood", TOTALTREE);
			TOTALTREE++;
			SetPlayerCheckpoint(playerid, Wood[GetPVarInt(playerid, "Wood")][0], Wood[GetPVarInt(playerid, "Wood")][1], Wood[GetPVarInt(playerid, "Wood")][2], 3.0);
		}
		else if(GetPVarInt(playerid,"Cargo") > 0 && GetPVarInt(playerid,"CargoYes") > 0 && IsPlayerAttachedObjectSlotUsed(playerid, 2))
        {
            SendClientMessage(playerid, COLOR_RED, "[W] Вы уронили мешок. Попытайтесь ещё раз.");
            if(TOTALCARGO <= 0)
			{
			    DisablePlayerCheckpoint(playerid);
	        	RemovePlayerAttachedObject(playerid,2);
	        	ClearAnimations(playerid);
				ApplyAnimation(playerid,"PED","IDLE_tired",4.1,0,1,1,0,1);
				SendClientMessage(playerid, COLOR_GREY, "[W] В вагонах больше нет мешков.");
			    return true;
			}
            DisablePlayerCheckpoint(playerid);
	        RemovePlayerAttachedObject(playerid,2);
			SetPlayerCheckpoint(playerid,2231.0959,-2285.3909,14.3751,1.4);
			SetPVarInt(playerid, "CargoYes",0);
			ClearAnimations(playerid);
			ApplyAnimation(playerid,"PED","IDLE_tired",4.1,0,1,1,0,1);
		}
    }
   	if(newkeys & KEY_FIRE)
   	{
		if(GetPVarInt(playerid, "pAKey") == 1)
		{
			callcmd::li(playerid, "");
		}
	}
   	if(newkeys & KEY_WALK)
	{
		if(GetPVarInt(playerid, "pAKey") == 1)
		{
			callcmd::atm(playerid, "");
		}
	}
	if(newkeys & KEY_SUBMISSION)
	{
		if(GetPVarInt(playerid, "pAKey") == 1)
		{
			callcmd::en(playerid, "");
	 	}
	}
	if(newkeys & KEY_ANALOG_DOWN)
	{
		if(GetPVarInt(playerid, "pAKey") == 1)
	 	{
	 		callcmd::boot(playerid, "");
	 	}
	}
	if(newkeys & KEY_ANALOG_UP) if(GetPVarInt(playerid, "pAKey") == 1) { callcmd::bonnet(playerid, ""); }
	if(newkeys & KEY_YES)
	{
	    if(GetPVarInt(playerid, "Sell") == 1)
	    {
	        SendClientMessage(playerid, 0x1E90FFFF, "{1E90FF}[I] Вы приобрели лазерную указку");
	        SetPlayerAttachedObject(playerid, 4, 18643, 6, 0.111052, 0.021643, -0.000846, 122.280899, 62.752510, 58.071044, 1.200000, 1.283168, 1.200000);
	        SetPVarInt(playerid, "Sell", 0);
		}
		if(GetPVarInt(playerid, "KeyHeal") == 1)
	    {
	        new p = GetPVarInt(playerid, "PlayerHeal");
			SetHealth(playerid, 100);
			if(GetPlayerDrunkLevel(playerid) > 0) SetPlayerDrunkLevel(playerid, 0);
			SendMes(playerid, 0x6495EDFF, "[ME] %s вылечил Вас", GetName(p));
			SendMes(p, 0x6495EDFF, "[P] Вы вылечили пациента %s", GetName(playerid));
			DeletePVar(playerid, "PlayerHeal");
  			DeletePVar(playerid, "KeyHeal");
  			return true;
	    }
	}
	if(newkeys & KEY_NO)
	{
	    if(GetPVarInt(playerid, "Sell") == 1)
	    {
	        SendClientMessage(playerid, 0x1E90FFFF, "{1E90FF}[I] Вы отклонили покупку лазерной указки");
	        SetPVarInt(playerid, "Sell", 0);
 		}
 		if(GetPVarInt(playerid, "KeyHeal") == 1)
	    {
	        new p = GetPVarInt(playerid, "PlayerHeal");
	        SendMes(p, 0x6495EDFF, "[S] Пациент %s отклонил предложение вылечиться", GetName(playerid));
		    DeletePVar(playerid, "PlayerHeal");
		    DeletePVar(playerid, "KeyHeal");
		    return 1;
	    }
	}
    return true;
}

public OnPlayerText(playerid, text[])
{
    if(GetPVarInt(playerid, "pMuted") > 0) { SendMes(playerid, COLOR_LIGHTRED, "[!] У Вас отключен чат. Дождитесь истечения: %i секунд.", GetPVarInt(playerid, "pMuted")); return false; }
    if(text[0] == 0x20) return false;
    if(!GetPVarInt(playerid,"Logged")) return false;
    if(!IsPlayerInAnyVehicle(playerid)) ApplyAnimation(playerid,"PED","IDLE_CHAT", 4.1, 0,1,1,1, 1);
	SetTimerEx("ClearText", 2400, false, "i", playerid);
	if(!IsPlayerInAnyVehicle(playerid)  && GetPVarInt(playerid,"CargoYes") != 1 && GetPVarInt(playerid,"Animation") != 1)
	{
  		ApplyAnimation(playerid,"PED","IDLE_CHAT",8.1,0,1,1,1,1);
       	SetTimerEx("ClearAnimText", 1400, false, "d", playerid);
	}
	if(GetPVarInt(playerid,"AntiFlood") > gettime())
	{
	    SendClientMessage(playerid, COLOR_LIGHTRED, NoFlood);
	    SetPVarInt(playerid,"Flood", GetPVarInt(playerid,"Flood")+5);
		return false;
	}
	if(Mobile[playerid] != -1 && Ether[playerid] == false)
	{
	    lines = "";
		format(lines, 128, "[Z] %s: %s", GetName(playerid), text);
		ProxDetector(playerid, 20.0, COLOR_GREY, lines);
  		if(Mobile[Mobile[playerid]] == playerid) SendClientMessage(Mobile[playerid], COLOR_YELLOW, lines);
		return 0;
	}
	if(GetPVarInt(playerid, "pTS1") == 1)
	{
	    if(GetPVarInt(playerid, "pTS4") == 1)
	    {
	        if(GetPVarInt(playerid, "pTS5") == 1)
	        {
			    format(lines, 128, "[...] - {C3C3C3}%s {FFFFFF}(%s)", text, GetName(playerid));
				ProxDetector(playerid, 30.0, COLOR_WHITE, lines);
				SetPlayerChatBubble(playerid, text, COLOR_WHITE, 30.0, 2000);
				SetPVarInt(playerid,"AntiFlood",gettime() + SECOND_FLOOD);
				return false;
			}
		}
	}
	if(GetPVarInt(playerid, "pTS1") == 1)
	{
	    if(GetPVarInt(playerid, "pTS4") == 1)
	    {
	        if(GetPVarInt(playerid, "pTS5") == 1)
	        {
			    format(lines, 128, "[...] - {C3C3C3}%s {FFFFFF}(%s[%d])", text, GetName(playerid), playerid);
				ProxDetector(playerid, 30.0, COLOR_WHITE, lines);
				SetPlayerChatBubble(playerid, text, COLOR_WHITE, 30.0, 2000);
				SetPVarInt(playerid,"AntiFlood",gettime() + SECOND_FLOOD);
				return false;
			}
		}
	}
	if(GetPVarInt(playerid, "pTS1") == 1)
	{
	    if(GetPVarInt(playerid, "pTS4") == 0)
	    {
	        if(GetPVarInt(playerid, "pTS1") == 1)
	        {
				format(lines, 128, "[...] - {C3C3C3}%s", text);
				ProxDetector(playerid, 30.0, COLOR_WHITE, lines);
				SetPlayerChatBubble(playerid, text, COLOR_WHITE, 30.0, 2000);
				SetPVarInt(playerid,"AntiFlood",gettime() + SECOND_FLOOD);
				return false;
			}
		}
	}
	if(GetPVarInt(playerid, "pTS1") == 1)
	{
	    if(GetPVarInt(playerid, "pTS4") == 0)
	    {
	        if(GetPVarInt(playerid, "pTS5") == 0)
	        {
				format(lines, 128, "[...] - {C3C3C3}%s", text);
				ProxDetector(playerid, 30.0, COLOR_WHITE, lines);
				SetPlayerChatBubble(playerid, text, COLOR_WHITE, 30.0, 2000);
				SetPVarInt(playerid,"AntiFlood",gettime() + SECOND_FLOOD);
				return false;
			}
		}
	}
	if(GetPVarInt(playerid, "pTS1") == 0)
	{
	    if(GetPVarInt(playerid, "pTS4") == 1)
	    {
	        if(GetPVarInt(playerid, "pTS5") == 0)
	        {
				format(lines, 128, "[...] %s: %s",GetName(playerid), text);
				ProxDetector(playerid, 30.0, COLOR_WHITE, lines);
				SetPlayerChatBubble(playerid, text, COLOR_WHITE, 30.0, 2000);
				SetPVarInt(playerid,"AntiFlood",gettime() + SECOND_FLOOD);
				return false;
			}
		}
	}
	if(GetPVarInt(playerid, "pTS1") == 0)
	{
	    if(GetPVarInt(playerid, "pTS4") == 1)
	    {
	        if(GetPVarInt(playerid, "pTS5") == 1)
	        {
				format(lines, 128, "[...] %s[%d]: %s",GetName(playerid), playerid, text);
				ProxDetector(playerid, 30.0, COLOR_WHITE, lines);
				SetPlayerChatBubble(playerid, text, COLOR_WHITE, 30.0, 2000);
				SetPVarInt(playerid,"AntiFlood",gettime() + SECOND_FLOOD);
				return false;
			}
		}
	}
	if(GetPVarInt(playerid, "pTS1") == 0)
	{
	    if(GetPVarInt(playerid, "pTS4") == 0)
	    {
	        if(GetPVarInt(playerid, "pTS5") == 0)
	        {
				format(lines, 128, "[...] %s", text);
				ProxDetector(playerid, 30.0, COLOR_WHITE, lines);
				SetPlayerChatBubble(playerid, text, COLOR_WHITE, 30.0, 2000);
				SetPVarInt(playerid,"AntiFlood",gettime() + SECOND_FLOOD);
				return false;
			}
		}
 	}
	if(GetPVarInt(playerid, "pTS1") == 0)
	{
	    if(GetPVarInt(playerid, "pTS4") == 0)
	    {
	        if(GetPVarInt(playerid, "pTS5") == 1)
	        {
				format(lines, 128, "[...] %s", text);
				ProxDetector(playerid, 30.0, COLOR_WHITE, lines);
				SetPlayerChatBubble(playerid, text, COLOR_WHITE, 30.0, 2000);
				SetPVarInt(playerid,"AntiFlood",gettime() + SECOND_FLOOD);
				return false;
			}
		}
 	}
 	return false;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
	    case D_NULL: return true;
	    case D_REG:
	    {
			//if(!response) return SendClientMessage(playerid, COLOR_LIGHTRED, PlayerNeedLogged), KickFromServer(playerid);
			if(response)
			{
				if(!strlen(inputtext) || strlen(inputtext) < 6 || strlen(inputtext) > 15)
				{
					return ShowPlayerDialog(playerid, D_ERROR, d_Box, "{6699FF}Ошибка", "{FFFFFF}Длина пароля должна быть от 6 до 15 символов\nРекомендуется использовать русские и латинские буквы, а также любые знаки", "Повтор", "");
	   			}
	   			strmid(cDataInfo[playerid][pPassword], inputtext, 0, strlen(inputtext), 32);
			}
		}
		case D_REG+1:
		{
  			if(response)
			{
				if(strlen(inputtext) > 8 && strfind(inputtext, "@", true) != -1 && strfind(inputtext, ".", true) != -1)
            	{
            	    strmid(cDataInfo[playerid][pMail], inputtext, 0, strlen(inputtext), 64);
   				}
				else return ShowPlayerDialog(playerid, D_ERROR+1, d_Box, "{6699FF}Ошибка", "{FFFFFF}Неверный формат ввода электронной почты", "Повтор", "");
			}
		}
		case D_REG+2:
		{
		    if(!response) DeletePVar(playerid, "pSex");
			else SetPVarInt(playerid, "pSex", 1);
		}
		case D_REG+3:
		{
		    if(response) return ShowPlayerDialog(playerid, D_REG+4, d_Input, "{6699FF}Возраст", "{FFFFFF}Укажите игровой возраст вашего персонажа:\n\n{6699FF}Это повлияет на ход вашей игры.\nВозраст может быть от 18 до 65 лет\n\nВвод возраста влияет на принятие Вас в гильдию.\nИзменить возраст возможно только через 'Дополнительные возможности сервера'.","Готово", "Назад");
			else return ShowPlayerDialog(playerid, D_REG+2, d_Box, "{6699FF}Пол", "{FFFFFF}Выберите пол вашему персонажу:", "Мужской", "Женский");
		}
		case D_REG+4:
		{
		    if(response)
		    {
		    	if(strlen(inputtext) != 2 || strval(inputtext) < 18 || strval(inputtext) > 65)
		    	{
		        return ShowPlayerDialog(playerid, D_ERROR+2, d_Box, "{6699FF}Ошибка", "{FFFFFF}Неверный ввод возраста", "Повтор", "");
		    	}
		        SetPVarInt(playerid, "pAge", strval(inputtext));
				return true;
		    }
		    else
		    {
		        //format(ShowRulesDialog, sizeof(ShowRulesDialog), "%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s",
				//RulesDialog[0], RulesDialog[1], RulesDialog[2], RulesDialog[3], RulesDialog[4], RulesDialog[5], RulesDialog[6], RulesDialog[7], RulesDialog[8], RulesDialog[9], RulesDialog[10], RulesDialog[11], RulesDialog[12], RulesDialog[13], RulesDialog[14], RulesDialog[15], RulesDialog[16], RulesDialog[17]);
				//ShowPlayerDialog(playerid, D_REG+3, d_Box, "{6699FF}Правила сервера", ShowRulesDialog, "Далее", "Назад");
		    }
		}
		case D_REG+5:
		{
		    switch(listitem)
		    {
				case 0: strmid(cDataInfo[playerid][pNation], (GetPVarInt(playerid, "pSex")) ? ("Японец") : ("Японка"), 0, strlen((GetPVarInt(playerid, "pSex")) ? ("Японец") : ("Японка")), 32);
				case 1: strmid(cDataInfo[playerid][pNation], (GetPVarInt(playerid, "pSex")) ? ("Русский") : ("Русская"), 0, strlen((GetPVarInt(playerid, "pSex")) ? ("Русский") : ("Русская")), 32);
				case 2: strmid(cDataInfo[playerid][pNation], (GetPVarInt(playerid, "pSex")) ? ("Итальянец") : ("Итальянка"), 0, strlen((GetPVarInt(playerid, "pSex")) ? ("Итальянец") : ("Итальянка")), 32);
				case 3: strmid(cDataInfo[playerid][pNation], (GetPVarInt(playerid, "pSex")) ? ("Американец") : ("Американка"), 0, strlen((GetPVarInt(playerid, "pSex")) ? ("Американец") : ("Американка")), 32);
				case 4: strmid(cDataInfo[playerid][pNation], (GetPVarInt(playerid, "pSex")) ? ("Афроамериканец") : ("Афроамериканка"), 0, strlen((GetPVarInt(playerid, "pSex")) ? ("Афроамериканец") : ("Афроамериканка")), 32);
				case 5: strmid(cDataInfo[playerid][pNation], (GetPVarInt(playerid, "pSex")) ? ("Латиноамериканец") : ("Латиноамериканка"), 0, strlen((GetPVarInt(playerid, "pSex")) ? ("Латиноамериканец") : ("Латиноамериканка")), 32);
		    }
		    if(response)
		    {
			    SetSpawnInfo(playerid, 255, GetPVarInt(playerid, "pModel"), 0, 0, 0, 1.0, -1, -1, -1, -1, -1, -1);
				SetPVarInt(playerid, "Nation", listitem);
				SetPVarInt(playerid, "Clothes", 1);
				SetPVarInt(playerid, "Logged", 1);
				SetHealth(playerid, 100);
				return SpawnPlayer(playerid);
			}
			else ShowPlayerDialog(playerid, D_REG+4, d_Input, "{6699FF}Возраст", "{FFFFFF}Укажите игровой возраст вашего персонажа:\n\n{6699FF}Это повлияет на ход вашей игры.\nВозраст может быть от 18 до 65 лет\n\nВвод возраста влияет на принятие Вас в гильдию.\nИзменить возраст возможно только через 'Дополнительные возможности сервера'.","Готово", "Назад");
		}
		case D_LOG:
		{
  			if(!response) return SendClientMessage(playerid, COLOR_LIGHTRED, PlayerNeedLogged), KickFromServer(playerid);
        	if(!strlen(inputtext))
			{
				format(lines, 200, "{FFFFFF}Добро пожаловать на сервер "NameServer"\n{FFFFFF}Ваш ник зарегистрирован\n\nЛогин:{6699FF} %s\n{FFFFFF}Введите пароль:",GetName(playerid));
				return ShowPlayerDialog(playerid, D_LOG, d_Input, "{6699FF}Авторизация", lines, "Вход","Выход");
			}
			mysql_format(Mysql, query, sizeof(query),"SELECT * FROM "TABLE_ACCOUNT" WHERE name = '%e' LIMIT 1",GetName(playerid));
    		return mysql_function_query(Mysql, query, true, "BadLogin","is", playerid, inputtext);
		}
		case D_HOUSE:
		{
			if(!response) return true;
			new idx = GetPVarInt(playerid, "PlayerHome");
  			if(!strcmp(HouseInfo[idx][hOwner],"None",true)) return ShowPlayerDialog(playerid, D_HOUSE+1, d_Box, "{6699FF}Оплата", "{FFFFFF}Выберите удобный для Вас способ оплаты", "Наличные", "Банк");
			else
			{
				if(HouseInfo[idx][hLock]) GameTextForPlayer(playerid, "~r~LOCK", 777, 1);
				else
				{
    				SetPlayerPos(playerid,HouseInfo[idx][hExit][0],HouseInfo[idx][hExit][1],HouseInfo[idx][hExit][2]);
					SetPlayerInterior(playerid,HouseInfo[idx][hInt][0]);
					SetPlayerVirtualWorld(playerid,HouseInfo[idx][hInt][1]);
					return true;
				}
			}
			return true;
		}
		case D_HOUSE+1:
		{
		    new idx = GetPVarInt(playerid, "PlayerHome");
		    if(GetPlayerHouse(playerid)) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы владеете домом.");
		    if(response)
		    {
		        if(GetMoney(playerid) < HouseInfo[idx][hPrice]) return SendClientMessage(playerid, COLOR_LIGHTRED, NotEnoughMoney);
		        GiveMoney(playerid, -HouseInfo[idx][hPrice]);
				SendMes(playerid, COLOR_CREAM, "[H] Вы купили дом за $%i. Остаток: $%i",HouseInfo[idx][hPrice], GetMoney(playerid));
		    }
		    else
		    {
				if(GetPVarInt(playerid, "Bank") < HouseInfo[idx][hPrice]) return SendClientMessage(playerid, COLOR_LIGHTRED, NotEnoughMoney);
				SetPVarInt(playerid, "Bank", GetPVarInt(playerid, "Bank") - HouseInfo[idx][hPrice]);
				SetPlayerInt(GetName(playerid), "Bank", GetPVarInt(playerid, "Bank"));
				SendMes(playerid, COLOR_CREAM, "[H] Вы купили дом за $%i. Остаток на счете: $%i.",HouseInfo[idx][hPrice], GetPVarInt(playerid, "Bank"));
		    }
		    SetPlayerInterior(playerid, HouseInfo[idx][hInt][0]);
		    SetPlayerVirtualWorld(playerid, HouseInfo[idx][hInt][1]);
			SetPlayerPos(playerid, HouseInfo[idx][hExit][0], HouseInfo[idx][hExit][1], HouseInfo[idx][hExit][2]);
			strmid(HouseInfo[idx][hOwner], GetName(playerid), 0, strlen(GetName(playerid)), MAX_PLAYER_NAME);
			SendClientMessage(playerid, COLOR_CREAM, "[H] Доступны новые команды: /setup");
			SetHouseStr(idx, "Owner", HouseInfo[idx][hOwner]);
		    return UpdateHouse(idx);
		}
		case D_HOUSE+2:
		{
  			if(!response) return true;
		    new i = GetPVarInt(playerid, "PlayerHouse");
		    switch(listitem)
		    {
		        case 0:
		        {
		            if(!HouseInfo[i][hLock])
		            {
   	 					HouseInfo[i][hLock] = 1;
					 	format(lines, 16, "~r~LOCK");
					 	PlayerPlaySound(playerid, 1145, 0.0, 0.0, 0.0);
					 	GameTextForPlayer(playerid, lines, 777, 1);
		 				return SetHouseInt(i, "Lock", HouseInfo[i][hLock]);
					}
					else
					{
                        HouseInfo[i][hLock] = 0;
					 	format(lines, 16, "~g~UNLOCK");
					 	PlayerPlaySound(playerid, 1145, 0.0, 0.0, 0.0);
					 	GameTextForPlayer(playerid, lines, 777, 1);
						return SetHouseInt(i, "Lock", HouseInfo[i][hLock]);
					}
		        }
				case 1:
				{
					new h_lines[64];
					format(h_lines, sizeof(h_lines), "{FFFFFF}На Вашем домашнем счету: {6699FF}%i {FFFFFF}долларов", HouseInfo[i][hCash]);
					return ShowPlayerDialog(playerid, D_HOUSE+4, d_Box, "{6699FF}Баланс", h_lines, "Назад", "Выход");
				}
				case 2: return true;
				case 3: return ShowPlayerDialog(playerid, D_HOUSE+3, d_Box, "{6699FF}Продать дом", "{FFFFFF}Вы хотите продать свой дом?", "Да", "Нет");
		    }
		    return true;
		}
		case D_HOUSE+3:
		{
		    if(!response) return true;
	   		new i = GetPVarInt(playerid, "PlayerHouse");
		    strmid(HouseInfo[i][hOwner], "None", 0, strlen("None"), MAX_PLAYER_NAME);
		    SetHouseStr(i, "Owner", "None");
		    SetHouseInt(i, "Cash", 0);
		    SetHouseInt(i, "Lock", 0);
			HouseInfo[i][hCash] = 0;
			HouseInfo[i][hLock] = 0;
			UpdateHouse(i);
			SendClientMessage(playerid, COLOR_CREAM, "[H] Вы продали своё жильё.");
			SetPVarInt(playerid, "Bank", GetPVarInt(playerid, "Bank") +HouseInfo[i][hPrice] / 2);
			SetPlayerInt(GetName(playerid), "Bank", GetPVarInt(playerid, "Bank"));
			if(GetPVarInt(playerid, "CREVEH") > 0)
			{
				DestroyVehicle(GetPVarInt(playerid,"CREVEH"));
				DeletePVar(playerid,"CREVEH");
			}
		}
		case D_HOUSE+4: ShowPlayerDialog(playerid, D_HOUSE+2, d_List, "{6699FF}Меню недвижимости", "{FFFFFF}1. Открыть или Закрыть дом\n2. Баланс дома\n3. Улучшения\n4. Продать дом", "Выбрать", "Выход");
		case D_BUSINESS:
		{
		    if(!response) return true;
		    if(response)
		    {
			    new idx = GetPVarInt(playerid, "PlayerBizz");
			    if(GetMoney(playerid) < BizzInfo[idx][bEnter]) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас недостаточно денег.");
			    GiveMoney(playerid, -BizzInfo[idx][bEnter]);
			    BizzInfo[idx][bMoney] += BizzInfo[idx][bEnter];
			    BizzPay[idx] += BizzInfo[idx][bEnter];
			    SetBizzInt(idx, "money", BizzInfo[idx][bMoney]);
			    SetPlayerPos(playerid,BizzInfo[idx][bExitx], BizzInfo[idx][bExity], BizzInfo[idx][bExitz]);
				SetPlayerInterior(playerid,BizzInfo[idx][bInt]);
				SetPlayerVirtualWorld(playerid,BizzInfo[idx][bVW]);
			}
			return true;
		}
		case D_BUSINESS+1:
		{
  			if(!response) return true;
  			if(response)
  			{
			    new idx = GetPVarInt(playerid, "PlayerBizz");
			    SetPlayerPos(playerid,BizzInfo[idx][bExitx], BizzInfo[idx][bExity], BizzInfo[idx][bExitz]);
				SetPlayerInterior(playerid,BizzInfo[idx][bInt]);
				SetPlayerVirtualWorld(playerid,BizzInfo[idx][bVW]);
			}
			return true;
		}
		case D_BUSINESS+2:
		{
  			if(!response) return true;
		    new idx = GetPVarInt(playerid, "PlayerBizz");
		    SetPlayerPos(playerid,BizzInfo[idx][bEntrx], BizzInfo[idx][bEntry], BizzInfo[idx][bEntrz]);
			SetPlayerInterior(playerid,0);
			SetPlayerVirtualWorld(playerid,0);
			return true;
		}
		case D_BUSINESS+7:
		{
  			if(!response) return true;
		    new i = GetPVarInt(playerid, "PlayerBizz");
		    switch(listitem)
		    {
		        case 0: BizzStats(playerid, i);
				case 1:
				{
				    if(BizzInfo[i][bLock] == 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Бизнес уже открыт.");
				    if(BizzInfo[i][bProduct] <= 0 || BizzInfo[i][bLic] == 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] В бизнесе нет продуктов или нет лицензии.");
				    BizzInfo[i][bLock] = 0, BizzInfo[i][bLockTime] = 0;
				    SetBizzInt(i, "block", BizzInfo[i][bLock]);
					SetBizzInt(i, "locktime", BizzInfo[i][bLockTime]);
				    SendClientMessage(playerid, COLOR_LIGHTRED, "[B] Вы открыли бизнес. Всегда следите за состоянием продуктов и лицензией.");
				    return SendClientMessage(playerid, COLOR_LIGHTRED, "[B] В противном случае вы можете потерять бизнес.");
				}
				case 2: return ShowPlayerDialog(playerid, D_BUSINESS+8, d_Input, "{6699FF}Цена", "{FFFFFF}Введите цену за товар в процентах:", "Готово", "Назад");
		        case 3:
				{
				    if(BizzInfo[i][bType] < 21) return ShowPlayerDialog(playerid, D_BUSINESS+9, d_Input, "{6699FF}Цена", "{FFFFFF}Введите цену за вход в долларах:", "Готово", "Назад");
				    else return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Указано неверное значение.");
				}
				case 4:
				{
				    ShowPlayerDialog(playerid, D_BUSINESS+12, d_Box, "{6699FF}Заказать продукты", "{FFFFFF}Вы уверены что хотите заказать 5.000 продуктов стоимостью 50.000$?", "Да", "Нет");
				}
				case 5: return ShowPlayerDialog(playerid, D_BUSINESS+10, d_Box, "{6699FF}Продажа бизнеса", "{FFFFFF}Вы хотите продать свой бизнес?\n\n{FF6347}Внимание! Вам вернут только половину стоимости бизнеса!", "Продать", "Назад");
		    }
		    return true;
		}
		case D_BUSINESS+8:
		{
		    if(!response)
		    {
		        if(GetPlayerBizz(playerid) == 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не владеете бизнесом.");
				return ShowPlayerDialog(playerid, D_BUSINESS+7, 2, "{6699FF}Меню предприятия", "1. Информация о бизнесе\n2. Открыть бизнес\n3. Установить цену за товар\n4. Установить цену за вход\n5. Заказать продукты\n6. Продать бизнес", "Выбрать", "Выход");
		    }
		    new price, i = GetPVarInt(playerid, "PlayerBizz");
		    if(sscanf(inputtext, "i", price)) return ShowPlayerDialog(playerid, D_BUSINESS+8, d_Box, "{6699FF}Цена", "{FFFFFF}Введите цену за товар в процентах:", "Готово", "Назад");
		    if(price < 1 || price > 100) return ShowPlayerDialog(playerid, D_BUSINESS+8, d_Box, "{6699FF}Цена", "{FFFFFF}Введите цену за товар в процентах:", "Готово", "Назад");
		    BizzInfo[i][bTill] = price;
		    SetBizzInt(i, "till", price);
		    return SendMes(playerid, COLOR_CREAM, "[B] Вы установили цену за товар: {6699FF}%i процентов", price);
		}
		case D_BUSINESS+9:
		{
		    if(!response)
		    {
		        if(GetPlayerBizz(playerid) == 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не владеете бизнесом.");
				return ShowPlayerDialog(playerid, D_BUSINESS+7, 2, "{6699FF}Меню предприятия", "1. Информация о бизнесе\n2. Открыть бизнес\n3. Установить цену за товар\n4. Установить цену за вход\n5. Заказать продукты\n6. Продать бизнес", "Выбрать", "Выход");
		    }
		    new enter, i = GetPVarInt(playerid, "PlayerBizz");
		    if(sscanf(inputtext, "i", enter)) return ShowPlayerDialog(playerid, D_BUSINESS+9, d_Input, "{6699FF}Цена", "{FFFFFF}Введите цену за вход в долларах:", "Готово", "Назад");
		    if(enter < 1 || enter > 10000) return ShowPlayerDialog(playerid, D_BUSINESS+9, d_Input, "{6699FF}Цена", "{FFFFFF}Введите цену за вход в долларах:\n{FF0000}Цена за вход от 0 до 10.000$!", "Готово", "Назад");
		    BizzInfo[i][bEnter] = enter;
		    SetBizzInt(i, "penter", enter);
		    return SendMes(playerid, COLOR_CREAM, "[B] Вы установили цену за вход: {6699FF}%i$.", enter);
		}
		case D_BUSINESS+10:
		{
		    if(!response)
		    {
		        if(response)
  				{
	  			    if(GetPlayerBizz(playerid) == 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не владеете бизнесом.");
					return ShowPlayerDialog(playerid, D_BUSINESS+7, 2, "{6699FF}Меню предприятия", "1. Информация о бизнесе\n2. Открыть бизнес\n3. Установить цену за товар\n4. Установить цену за вход\n5. Заказать продукты\n6. Продать бизнес", "Выбрать", "Выход");
  				}
		    }
			if(response)
			{
				new i = GetPVarInt(playerid, "PlayerBizz");
				strmid(BizzInfo[i][bOwner], "None", 0, strlen("None"), MAX_PLAYER_NAME);
				BizzInfo[i][bLock] = 0;
				SendClientMessage(playerid, COLOR_LIGHTRED, "[B] Вы продали свой бизнес. Деньги с бизнеса переведены на ваш счет");
				SetPVarInt(playerid, "Bank", GetPVarInt(playerid, "Bank") + BizzInfo[i][bPrice] / 2 + BizzInfo[i][bMoney]);
				BizzInfo[i][bMoney] = 0, BizzInfo[i][bLic] = 0, BizzInfo[i][bEnter] = 100, BizzInfo[i][bTill] = 50;
	            SetPlayerInt(GetName(playerid), "Bank", GetPVarInt(playerid, "Bank"));
				format(query, sizeof(query), "UPDATE "TABLE_BIZZ" SET owner = '%s', block = %d, money = %d, lic = %d, penter = %d, till = %d WHERE id = %d",
				BizzInfo[i][bOwner], BizzInfo[i][bLock], BizzInfo[i][bMoney], BizzInfo[i][bLic], BizzInfo[i][bEnter], BizzInfo[i][bTill],i);
				mysql_function_query(Mysql, query, false, "", "");
				UpdateBizz(i);
			}
		}
		case D_BUSINESS+11:
		{
		    if(response)
  			{
  			    if(GetPlayerBizz(playerid) == 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не владеете бизнесом.");
				return ShowPlayerDialog(playerid, D_BUSINESS+7, 2, "{6699FF}Меню предприятия", "1. Информация о бизнесе\n2. Открыть бизнес\n3. Установить цену за товар\n4. Установить цену за вход\n5. Заказать продукты\n6. Продать бизнес", "Выбрать", "Выход");
  			}
		}
		case D_BUSINESS+12:
		{
		    if(!response) return ShowPlayerDialog(playerid, D_BUSINESS+7, 2, "{6699FF}Меню предприятия", "1. Информация о бизнесе\n2. Открыть бизнес\n3. Установить цену за товар\n4. Установить цену за вход\n5. Заказать продукты\n6. Продать бизнес", "Выбрать", "Выход");
		    if(response)
		    {
		        if(GetMoney(playerid) < 50000) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас недостаточно средств.");
				GivePlayerMoney(playerid, -50000);
				BizzInfo[playerid][bProduct] += 5000;
		    }
		}
		case D_MENU:
		{
		    if(!response) return true;
		    switch(listitem)
		    {
		        case 0: return Stats(playerid);
		        case 1:
				{
				    if(!GetPVarInt(playerid, "pAdmin")) return ShowPlayerDialog(playerid, D_MENU+1, d_List, "{6699FF}Команды сервера", "{ADFF2F}1. Получить описание\n{FFFFFF}2. Общие команды\n3. Команды авто\n4. Команды дома\n5. Команды организации\n6. Команды предприятия", "Выбрать","Назад");
				    return ShowPlayerDialog(playerid, D_MENU+1, d_List, "{6699FF}Команды Cервера", "{ADFF2F}1. Получить описание\n{FFFFFF}2. Общие команды\n3. Команды авто\n4. Команды дома\n5. Команды организации\n\n6. Команды предприятия\n7. Команды администратора", "Выбрать","Назад");
				}
		        case 2:
		        {
		            format(ShowRulesDialog, sizeof(ShowRulesDialog), "%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s",
					RulesDialog[0], RulesDialog[1], RulesDialog[2], RulesDialog[3], RulesDialog[4], RulesDialog[5], RulesDialog[6], RulesDialog[7], RulesDialog[8], RulesDialog[9], RulesDialog[10], RulesDialog[11], RulesDialog[12], RulesDialog[13], RulesDialog[14], RulesDialog[15], RulesDialog[16], RulesDialog[17]);
					ShowPlayerDialog(playerid, D_MENU+5, d_Box, "{6699FF}Правила сервера", ShowRulesDialog, "Назад", "Выход");
		        }
		        case 4: return ShowPlayerDialog(playerid, D_MENU+20, d_List, "{6699FF}Настройки безопасности", "{FFFFFF}1. Информация о настройках\n2. Установка секретного вопроса\n3. Матричная защита", "Выбрать", "Назад");
		        case 5: return ShowPlayerDialog(playerid, D_MENU+7, d_List, "{6699FF}Улучшения", "{FFFFFF}1. Информация", "Выбрать", "Назад");
		        case 6: return EditSettings(playerid);
				case 7: return ShowPlayerDialog(playerid, D_MENU+4, d_Input, "{6699FF}Связь с администрацией", "{FFFFFF}Введите своё сообщение для администрации сервера\nОно должно быть кратким и ясным\n\n{6699FF}Если вы хотите подать жалобу на игрока,\nобязательно укажите его ID и причину жалобы", "Отправить", "Назад");
				case 8:
				{
				    Tranquilizator(playerid);
				}
				case 9:
		        {
		            new ExtraUses[720];
		            new ExtraUses2[64];
		            new ExtraUses3[64];
		            ExtraUses = "";
		            strcat(ExtraUses, "{FFFFFF}В этом разделе вы сможете приобрести и использовать дополнительные\n");
		            strcat(ExtraUses, "{FFFFFF}возможности сервера. Для избежания их массового использования мы\n");
		            strcat(ExtraUses, "{FFFFFF}сделали этот раздел закрытым. Доступ к нему можно получить,\n");
		            strcat(ExtraUses, "{FFFFFF}пополнив свой игровой счёт. Описание всех дополнительных\n");
		            strcat(ExtraUses, "{FFFFFF}возможностей, а также о способах пополнения счёта вы можете\n");
		            strcat(ExtraUses, "{FFFFFF}узнать на сайте: {DAA520}www.trnqlt.ru (В разделе ''Дополнительно'')\n\n");
		            strcat(ExtraUses, "{42AAFF}Информация:\n");
		            format(ExtraUses2, sizeof(ExtraUses2), "{FFFFFF}Номер аккаунта:\t\t\t%i\n", GetPVarInt(playerid, "pID"));
		            strcat(ExtraUses, ExtraUses2);
		            format(ExtraUses3, sizeof(ExtraUses3), "{FFFFFF}Текущее состояние счёта:\t\t%i\n", GetPVarInt(playerid, "pExtra"));
		            strcat(ExtraUses, ExtraUses3);
		            strcat(ExtraUses, "{FFFFFF}Поддерживаемые сервисы оплаты:  {FF0000}Я{FFFFFF}ндекс Деньги, WebMoney (WMR), Qiwi");
					return ShowPlayerDialog(playerid, D_EXTRA, d_Box, "{6699FF}Дополнительно", ExtraUses, "Просмотр", "Назад");
				}
    		}
		    return true;
		}
		case D_MENU+1:
		{
		    if(!response) return ShowPlayerDialog(playerid, D_MENU, d_List, "{6699FF}Меню игрока", "1. Статистика\n2. Команды сервера\n3. Правила сервера\n4. Помощь по серверу\n5. Настройки безопасности\n6. Улучшения\n7. Личные настройки\n8. Связь с администрацией\n9. Траквилизатор", "Выбрать", "Выход");
		    switch(listitem)
		    {
		        case 0: ShowPlayerDialog(playerid, D_CMDHELP+1, d_Input, "{6699FF}Описание команды", "{FFFFFF}Введите интересующую Вас команду\nдля получения её описания:", "Описание", "Назад");
		        case 1:
		        {
					new player_cmd[577];
		            strcat(player_cmd, "{FFFFFF}[ /setup ]{F0DC82} - Меню игрока\n");
		            strcat(player_cmd, "{FFFFFF}[ /pass ]{F0DC82} - Показ пасспорта\n");
		            strcat(player_cmd, "{FFFFFF}[ /time ]{F0DC82} - Часы\n");
		            strcat(player_cmd, "{FFFFFF}[ /pay ]{F0DC82} - Передача денег\n");
		            strcat(player_cmd, "{FFFFFF}[ /setspawn ]{F0DC82} - Изменить место появления\n");
		            strcat(player_cmd, "{FFFFFF}[ /dinfo ]{F0DC82} - Правила вождения\n");
		            strcat(player_cmd, "{FFFFFF}[ /action]{F0DC82} - Действия\n");
		            strcat(player_cmd, "{FFFFFF}[ /do ]{F0DC82} - Действие от 1 лица\n");
		            strcat(player_cmd, "{FFFFFF}[ /me ]{F0DC82} - Выполнение действия\n");
		            strcat(player_cmd, "{FFFFFF}[ /n ]{F0DC82} - OOC чат\n");
		            strcat(player_cmd, "{FFFFFF}[ /try ]{F0DC82} - Попытка выполнить что-то\n");
		            strcat(player_cmd, "{FFFFFF}[ /s }{F0DC82} - Выкрикнуть что либо\n");
					strcat(player_cmd, "{FFFFFF}[ /vamque ]{F0DC82} - Вампирическая система квестов\n");
		            strcat(player_cmd, "{FFFFFF}[ /fracti ]{F0DC82} - Информация о фракциях\n");
		            strcat(player_cmd, "{FFFFFF}[ /ambient ]{F0DC82} - Звуковое сопровождение\n");
		            strcat(player_cmd, "{FFFFFF}[ /returnmoney ]{F0DC82} - Возврат денег\n");
		            strcat(player_cmd, "{FFFFFF}[ /ambient ]{F0DC82} - Звуковое сопровождение");
		            ShowPlayerDialog(playerid, D_CMDHELP, d_Box, "{6699FF}Общие команды", player_cmd, "Назад", "Выход");
		        }
				case 2:
				{
				    new vehicle_cmd[512];
				    strcat(vehicle_cmd, "{FFFFFF}[ /en ]{F0DC82} - Завести / заглушить транспорт\n");
				    strcat(vehicle_cmd, "{FFFFFF}[ /car ]{F0DC82} - Управление транспортным средством\n");
				    strcat(vehicle_cmd, "{FFFFFF}[ /li ]{F0DC82} - Включить / выключить фары\n");
				    strcat(vehicle_cmd, "{FFFFFF}[ /boot ]{F0DC82} - Открыть / закрыть багажник\n");
				    strcat(vehicle_cmd, "{FFFFFF}[ /eject ]{F0DC82} - Вызволить игрока из транспорта\n");
				    strcat(vehicle_cmd, "{FFFFFF}[ /bonnet ]{F0DC82} - Открыть / закрыть капот\n");
				    ShowPlayerDialog(playerid, D_CMDHELP, d_Box, "{6699FF}Команды авто", vehicle_cmd, "Назад", "Выход");
				}
				case 3:
				{
				    new home_cmd[512];
				    strcat(home_cmd, "{FFFFFF}[ /home ]{F0DC82} - Меню недвижимости\n");
				    strcat(home_cmd, "{FFFFFF}[ /exit ]{F0DC82} - Покинуть недвижимость");
				    ShowPlayerDialog(playerid, D_CMDHELP, d_Box, "{6699FF}Команды дома", home_cmd, "Назад", "Выход");
				}
				case 4:
				{
				    new organize_cmd[3092];
				    if(GetPVarInt(playerid, "pMember") == 1)
				    {
				        strcat(organize_cmd, "{FFFFFF}[ /payment ]{F0DC82} - Установка зарплат для государственных организаций\n");
					    strcat(organize_cmd, "{FFFFFF}[ /star ]{F0DC82} - Установить преступнику звездочку\n");
					    strcat(organize_cmd, "{FFFFFF}[ /jail ]{F0DC82} - Надеть наручники\n");
					    strcat(organize_cmd, "{FFFFFF}[ /unjail ]{F0DC82} - Убрать наручники\n");
					    strcat(organize_cmd, "{FFFFFF}[ /r ]{F0DC82} - IC рация\n");
					    strcat(organize_cmd, "{FFFFFF}[ /rn ]{F0DC82} - OOC рация\n");
				    }
				    if(GetPVarInt(playerid, "pMember") == 2)
				    {
				        strcat(organize_cmd, "{FFFFFF}[ /case ]{F0DC82} - Управление казной мэрии\n");
					    strcat(organize_cmd, "{FFFFFF}[ /star ]{F0DC82} - Установить преступнику звездочку\n");
					    strcat(organize_cmd, "{FFFFFF}[ /jail ]{F0DC82} - Надеть наручники\n");
					    strcat(organize_cmd, "{FFFFFF}[ /unjail ]{F0DC82} - Убрать наручники\n");
					    strcat(organize_cmd, "{FFFFFF}[ /r ]{F0DC82} - IC рация\n");
					    strcat(organize_cmd, "{FFFFFF}[ /rn ]{F0DC82} - OOC рация\n");
				    }
				    if(GetPVarInt(playerid, "pMember") == 3)
				    {
                        strcat(organize_cmd, "{FFFFFF}[ /case ]{F0DC82} - Управление казной мэрии\n");
					    strcat(organize_cmd, "{FFFFFF}[ /star ]{F0DC82} - Установить преступнику звездочку\n");
					    strcat(organize_cmd, "{FFFFFF}[ /jail ]{F0DC82} - Надеть наручники\n");
					    strcat(organize_cmd, "{FFFFFF}[ /unjail ]{F0DC82} - Убрать наручники\n");
					    strcat(organize_cmd, "{FFFFFF}[ /r ]{F0DC82} - IC рация\n");
					    strcat(organize_cmd, "{FFFFFF}[ /rn ]{F0DC82} - OOC рация\n");
				    }
				    if(GetPVarInt(playerid, "pMember") == 4)
				    {
					    strcat(organize_cmd, "{FFFFFF}[ /superinvite ]{F0DC82} - Выдать удостоверение о службе в армии\n");
				    }
				    if(GetPVarInt(playerid, "pMember") == 5)
				    {
					    strcat(organize_cmd, "{FFFFFF}[ /superinvite ]{F0DC82} - Выдать удостоверение о службе в армии\n");
				    }
				    if(GetPVarInt(playerid, "pMember") == 6)
				    {
					    strcat(organize_cmd, "{FFFFFF}[ /superinvite ]{F0DC82} - Выдать удостоверение о службе в армии\n");
				    }
				    if(GetPVarInt(playerid, "pMember") == 7)
				    {
					    strcat(organize_cmd, "{FFFFFF}[ /superinvite ]{F0DC82} - Выдать удостоверение о службе в армии\n");
				    }
				    if(GetPVarInt(playerid, "pMember") == 8)
				    {
				        strcat(organize_cmd, "{FFFFFF}[ /sign ]{F0DC82} - Установить дорожный знак\n");
				        strcat(organize_cmd, "{FFFFFF}[ /incar ]{F0DC82} - Засунуть в автомобиль\n");
				        strcat(organize_cmd, "{FFFFFF}[ /case ]{F0DC82} - Список розыскиваемых\n");
					    strcat(organize_cmd, "{FFFFFF}[ /wanted ]{F0DC82} - Список розыскиваемых\n");
					    strcat(organize_cmd, "{FFFFFF}[ /star ]{F0DC82} - Установить преступнику звездочку\n");
					    strcat(organize_cmd, "{FFFFFF}[ /jail ]{F0DC82} - Надеть наручники\n");
					    strcat(organize_cmd, "{FFFFFF}[ /unjail ]{F0DC82} - Убрать наручники\n");
				    }
				    if(GetPVarInt(playerid, "pMember") == 9)
				    {
				        strcat(organize_cmd, "{FFFFFF}[ /incar ]{F0DC82} - Засунуть в автомобиль\n");
				        strcat(organize_cmd, "{FFFFFF}[ /case ]{F0DC82} - Список розыскиваемых\n");
					    strcat(organize_cmd, "{FFFFFF}[ /wanted ]{F0DC82} - Список розыскиваемых\n");
					    strcat(organize_cmd, "{FFFFFF}[ /star ]{F0DC82} - Установить преступнику звездочку\n");
					    strcat(organize_cmd, "{FFFFFF}[ /jail ]{F0DC82} - Надеть наручники\n");
					    strcat(organize_cmd, "{FFFFFF}[ /unjail ]{F0DC82} - Убрать наручники\n");
				    }
				    if(GetPVarInt(playerid, "pMember") == 10)
				    {
					    strcat(organize_cmd, "{FFFFFF}[ /incar ]{F0DC82} - Засунуть в автомобиль\n");
				        strcat(organize_cmd, "{FFFFFF}[ /case ]{F0DC82} - Список розыскиваемых\n");
					    strcat(organize_cmd, "{FFFFFF}[ /wanted ]{F0DC82} - Список розыскиваемых\n");
					    strcat(organize_cmd, "{FFFFFF}[ /star ]{F0DC82} - Установить преступнику звездочку\n");
					    strcat(organize_cmd, "{FFFFFF}[ /jail ]{F0DC82} - Надеть наручники\n");
					    strcat(organize_cmd, "{FFFFFF}[ /unjail ]{F0DC82} - Убрать наручники\n");
				    }
				    if(GetPVarInt(playerid, "pMember") == 12)
				    {
				        strcat(organize_cmd, "{FFFFFF}[ //t ]{F0DC82} - Управление объявлениями\n");
				        strcat(organize_cmd, "{FFFFFF}[ /u ]{F0DC82} - Управление объявлениями\n");
				        strcat(organize_cmd, "{FFFFFF}[ /bring ]{F0DC82} - Управление объявлениями\n");
				        strcat(organize_cmd, "{FFFFFF}[ /audience ]{F0DC82} - Управление объявлениями\n");
				        strcat(organize_cmd, "{FFFFFF}[ /camera ]{F0DC82} - Управление объявлениями\n");
				        strcat(organize_cmd, "{FFFFFF}[ /light ]{F0DC82} - Управление объявлениями\n");
				        strcat(organize_cmd, "{FFFFFF}[ /makeskin ]{F0DC82} - Управление объявлениями\n");
					    strcat(organize_cmd, "{FFFFFF}[ /edit ]{F0DC82} - Управление объявлениями\n");
				    }
				    if(GetPVarInt(playerid, "pMember") == 13)
				    {
					    strcat(organize_cmd, "{FFFFFF}[ /edit ]{F0DC82} - Управление объявлениями\n");
				    }
				    if(GetPVarInt(playerid, "pMember") == 14)
				    {
					    strcat(organize_cmd, "{FFFFFF}[ /edit ]{F0DC82} - Управление объявлениями\n");
				    }
				    if(GetPVarInt(playerid, "pMember") == 15)
				    {
					    strcat(organize_cmd, "{FFFFFF}[ /hp ]{F0DC82} - Лечить пациента\n");
					    strcat(organize_cmd, "{FFFFFF}[ /star ]{F0DC82} - Установить преступнику звездочку\n");
					    strcat(organize_cmd, "{FFFFFF}[ /jail ]{F0DC82} - Надеть наручники\n");
					    strcat(organize_cmd, "{FFFFFF}[ /unjail ]{F0DC82} - Убрать наручники\n");
				    }
				    if(GetPVarInt(playerid, "pMember") == 16)
				    {
					    strcat(organize_cmd, "{FFFFFF}[ /hp ]{F0DC82} - Лечить пациента\n");
					    strcat(organize_cmd, "{FFFFFF}[ /star ]{F0DC82} - Установить преступнику звездочку\n");
					    strcat(organize_cmd, "{FFFFFF}[ /jail ]{F0DC82} - Надеть наручники\n");
					    strcat(organize_cmd, "{FFFFFF}[ /unjail ]{F0DC82} - Убрать наручники\n");
				    }
				    if(GetPVarInt(playerid, "pMember") == 17)
				    {
					    strcat(organize_cmd, "{FFFFFF}[ /hp ]{F0DC82} - Лечить пациента\n");
					    strcat(organize_cmd, "{FFFFFF}[ /star ]{F0DC82} - Установить преступнику звездочку\n");
					    strcat(organize_cmd, "{FFFFFF}[ /jail ]{F0DC82} - Надеть наручники\n");
					    strcat(organize_cmd, "{FFFFFF}[ /unjail ]{F0DC82} - Убрать наручники\n");
				    }
				    ShowPlayerDialog(playerid, D_CMDHELP, d_Box, "{6699FF}Команды организации", organize_cmd, "Назад", "Выход");
				}
				case 5:
				{
				    new business_cmd[768];
				    strcat(business_cmd, "{FFFFFF}[ /bsetup ]{F0DC82} - Управление бизнесом\n");
				}
				case 6:
				{
				    new administrator_cmd[2048];
				    if(GetPVarInt(playerid, "pAdmin") >= 1)
				    {
					    strcat(administrator_cmd, "{FFFFFF}[ /admin ]{F0DC82} - Авторизация под правами доступа администратора\n");
					    strcat(administrator_cmd, "{FFFFFF}[ /a ]{F0DC82} - Администраторский чат\n");
					    strcat(administrator_cmd, "{FFFFFF}[ /kick ]{F0DC82} - Кикнуть игрока\n");
					    strcat(administrator_cmd, "{FFFFFF}[ /mute ]{F0DC82} - Заглушить игрока\n");
					    strcat(administrator_cmd, "{FFFFFF}[ /unmute ]{F0DC82} - Убрать заглушку чата\n");
					    strcat(administrator_cmd, "{FFFFFF}[ /tp ]{F0DC82} - Телепортироваться к определённому игроку\n");
					    strcat(administrator_cmd, "{FFFFFF}[ /tele ]{F0DC82} - Список телепортов\n");
					    strcat(administrator_cmd, "{FFFFFF}[ /gethere ]{F0DC82} - Телепортировать к себе игрока\n");
					    strcat(administrator_cmd, "{FFFFFF}[ /jet ]{F0DC82} - Использовать JetPack\n");
					}
 				    if(GetPVarInt(playerid, "pAdmin") >= 2)
				    {
				        strcat(administrator_cmd, "{FFFFFF}[ /spawn ]{F0DC82} - Возродить игрока\n");
				        strcat(administrator_cmd, "{FFFFFF}[ /tpcor ]{F0DC82} - Телепорт по указанным координатам\n");
				        strcat(administrator_cmd, "{FFFFFF}[ /disarm ]{F0DC82} - Отобрать всё оружие у игрока\n");
				    }
				    if(GetPVarInt(playerid, "pAdmin") >= 3)
				    {
				        strcat(administrator_cmd, "{FFFFFF}[ /ooc ]{F0DC82} - Администраторское объявление\n");
				        strcat(administrator_cmd, "{FFFFFF}[ /fixveh ]{F0DC82} - Починить транспорт\n");
				        strcat(administrator_cmd, "{FFFFFF}[ /glasses ]{F0DC82} - Надеть очки\n");
				    }
				    if(GetPVarInt(playerid, "pAdmin") >= 4)
				    {
				        strcat(administrator_cmd, "{FFFFFF}[ /veh ]{F0DC82} - Создать транспорт с выбором 2-х цветов\n");
					    strcat(administrator_cmd, "{FFFFFF}[ /dveh ]{F0DC82} - Уничтожить транспорт\n");
				    }
				    if(GetPVarInt(playerid, "pAdmin") >= 5)
				    {
				        strcat(administrator_cmd, "{FFFFFF}[ /setfuel ]{F0DC82} - Изменить уровень бензина в транспортном средстве\n");
					    strcat(administrator_cmd, "{FFFFFF}[ /sethp ]{F0DC82} - Изменить у игрока уровень здоровья\n");
				    }
				    if(GetPVarInt(playerid, "pAdmin") >= 6)
				    {
				    }
				    if(GetPVarInt(playerid, "pAdmin") >= 7)
				    {
				        strcat(administrator_cmd, "{FFFFFF}[ /setskin ]{F0DC82} - Изменить скин игроку\n");
				    }
				    if(GetPVarInt(playerid, "pAdmin") >= 8)
				    {
				        strcat(administrator_cmd, "{FFFFFF}[ /settime ]{F0DC82} - Изменение времени\n");
				    }
				    if(GetPVarInt(playerid, "pAdmin") >= 9)
				    {
				        strcat(administrator_cmd, "{FFFFFF}[ /payday ]{F0DC82} - Выдача зарплаты всем игрокам\n");
				    }
				    if(GetPVarInt(playerid, "pAdmin") >= 10)
				    {
					    strcat(administrator_cmd, "{FFFFFF}[ /setstats ]{F0DC82} - Изменение статистики у игрока\n");
					    strcat(administrator_cmd, "{FFFFFF}[ /add ]{F0DC82} - Динамическое меню\n");
					    strcat(administrator_cmd, "{FFFFFF}[ /car1 ]{F0DC82} - Добавить транспорт на продажу\n");
					    strcat(administrator_cmd, "{FFFFFF}[ /givemoney ]{F0DC82} - Выдача денег выбранному игроку\n");
					    strcat(administrator_cmd, "{FFFFFF}[ /burn ]{F0DC82} - Сжечь игрока\n");
					    strcat(administrator_cmd, "{FFFFFF}[ /refactore ]{F0DC82} - Рефакторинг ядра\n");
					}
					ShowPlayerDialog(playerid, D_CMDHELP, d_Box, "{6699FF}Команды администратора", administrator_cmd, "Назад", "Выход");
				}
			}
		    return true;
		}
		case D_MENU+2:
		{
		    if(!response) return ShowPlayerDialog(playerid, D_MENU, d_List, "{6699FF}Меню игрока", "1. Статистика\n2. Команды сервера\n3. Правила сервера\n4. Помощь по серверу\n5. Настройки безопасности\n6. Улучшения\n7. Личные настройки\n8. Связь с администрацией\n9. Траквилизатор", "Выбрать", "Выход");
		    switch(listitem)
		    {
		        case 0..1: return true;
      		}
		    return true;
		}
		case D_MENU+3:
		{
		    if(!response) return ShowPlayerDialog(playerid, D_MENU, d_List, "{6699FF}Меню игрока", "1. Статистика\n2. Команды сервера\n3. Правила сервера\n4. Помощь по серверу\n5. Настройки безопасности\n6. Улучшения\n7. Личные настройки\n8. Связь с администрацией\n9. Траквилизатор", "Выбрать", "Выход");
		    return true;
		}
		case D_MENU+4:
		{
		    if(!response) return ShowPlayerDialog(playerid, D_MENU, d_List, "{6699FF}Меню игрока", "1. Статистика\n2. Команды сервера\n3. Правила сервера\n4. Помощь по серверу\n5. Настройки безопасности\n6. Улучшения\n7. Личные настройки\n8. Связь с администрацией\n9. Траквилизатор", "Выбрать", "Выход");
		  	if(GetPVarInt(playerid,"AntiFloodRep") > gettime()) return SendClientMessage(playerid, COLOR_LIGHTRED, PlayerRepFlood);
			SendAdmin(COLOR_LIGHTRED, "[A] [R] Жалоба от %s (ID: %d): %s", GetName(playerid), playerid, inputtext);
			SetPVarInt(playerid,"AntiFloodRep",gettime() + REPORT_FLOOD);
			return SendClientMessage(playerid, COLOR_CREAM, "[S] Ваш запрос был отправлен администрации");
		}
		case D_MENU+5: if(response) ShowPlayerDialog(playerid, D_MENU, d_List, "{6699FF}Меню игрока", "1. Статистика\n2. Команды сервера\n3. Правила сервера\n4. Помощь по серверу\n5. Настройки безопасности\n6. Улучшения\n7. Личные настройки\n8. Связь с администрацией\n9. Траквилизатор", "Выбрать", "Выход");
		case D_MENU+7:
		{
		    if(response)
		    {
		        lines = "";
		        strcat(lines, "{FFFFFF}1. Выносливость позволит находится в хорошей форме длительное\nвремя. Полоска здоровья будет уменьшаться медленнее.\n\n");
		        strcat(lines, "2. Решительность позволит Вам самостоятельно принимать решение об\nувольнении с организации (команда /escape).");
		        strcat(lines, "Без решительности вы не\nсможете покинуть организацию по собственному желанию.\n\n");
		        strcat(lines, "3. Красноречие позволит Вам договариваться с лидерами организаций на \nболее высокую должность.");
		        strcat(lines, "Без данного улучшения вы попадёте в\nгильдию на самую низкую должность.\n\n");
		        strcat(lines, "4. Рюкзак даст возможность переносить с собой металл, патроны и\nнаркотики в гораздо большем количестве.\n\n");
		        strcat(lines, "5. Став мастером вождения, двигатель транспорта под Вашим управлением\nбольше не будет глохнуть при различных ударах.\n\n");
		        ShowPlayerDialog(playerid, D_MENU+15, d_Box, "{6699FF}Информация", lines, "Назад", "Выход");
      		}
			else return ShowPlayerDialog(playerid, D_MENU, d_List, "{6699FF}Меню игрока", "1. Статистика\n2. Команды сервера\n3. Правила сервера\n4. Помощь по серверу\n5. Настройки безопасности\n6. Улучшения\n7. Личные настройки\n8. Связь с администрацией\n9. Дополнительно\n10. Траквилизатор", "Выбрать","Выход");
		}
		case D_MENU+15:
		{
		    if(response) ShowPlayerDialog(playerid, D_MENU+7, d_List, "{6699FF}Улучшения", "{FFFFFF}1. Информация", "Выбрать", "Назад");
			else return true;
		}
		case D_MENU+16:
		{
		    if(response)
		    {
		        switch(listitem)
		        {
		            case 0:
		            {
		                if(GetPVarInt(playerid, "pTS1") == 1)
		                {
		                    SetPVarInt(playerid, "pTS1", 0), EditSettings(playerid);
						}
						else SetPVarInt(playerid, "pTS1", 1), EditSettings(playerid);
					}
					case 1:
					{
					    if(GetPVarInt(playerid, "pTS2") == 1)
					    {
					        SetPVarInt(playerid, "pTS2", 0), EditSettings(playerid);
						}
						else SetPVarInt(playerid, "pTS1", 1), EditSettings(playerid);
					}
					case 2:
					{
					    if(GetPVarInt(playerid, "pTS3") == 1)
					    {
					        SetPVarInt(playerid, "pTS3", 0), EditSettings(playerid);
						}
						else SetPVarInt(playerid, "pTS3", 1), EditSettings(playerid);
					}
					case 3:
					{
					    if(GetPVarInt(playerid, "pTS4") == 1)
					    {
					        SetPVarInt(playerid, "pTS4", 0), EditSettings(playerid);
						}
						else SetPVarInt(playerid, "pTS4", 1), EditSettings(playerid);
					}
					case 4:
					{
					    if(GetPVarInt(playerid, "pTS5") == 1)
					    {
					        SetPVarInt(playerid, "pTS5", 0), EditSettings(playerid);
						}
						else SetPVarInt(playerid, "pTS5", 1), EditSettings(playerid);
					}
					case 5:
					{
					    if(GetPVarInt(playerid, "pAKey") == 1)
					    {
					        SetPVarInt(playerid, "pAKey", 0), EditSettings(playerid);
						}
						else SetPVarInt(playerid, "pAKey", 1), EditSettings(playerid);
					}
					case 6:
					{
					    SendClientMessage(playerid, COLOR_CREAM, "[P] Личные настройки успешно сохранены.");
					    SetPlayerInt(GetName(playerid), "ts1", GetPVarInt(playerid, "pTS1"));
					    SetPlayerInt(GetName(playerid), "ts2", GetPVarInt(playerid, "pTS2"));
					    SetPlayerInt(GetName(playerid), "ts3", GetPVarInt(playerid, "pTS3"));
					    SetPlayerInt(GetName(playerid), "ts4", GetPVarInt(playerid, "pTS4"));
					    SetPlayerInt(GetName(playerid), "ts5", GetPVarInt(playerid, "pTS5"));
					    SetPlayerInt(GetName(playerid), "akey", GetPVarInt(playerid, "pAKey"));
					}
				}
			}
			else ShowPlayerDialog(playerid, D_MENU, d_List, "{6699FF}Меню игрока", "1. Статистика\n2. Команды сервера\n3. Правила сервера\n4. Помощь по серверу\n5. Настройки безопасности\n6. Улучшения\n7. Личные настройки\n8. Связь с администрацией\n9. Траквилизатор", "Выбрать", "Выход");
		}
		case D_MENU+20:
		{
		    switch(listitem)
		    {
		        case 0:
		        {
				    if(response)
				    {
				        lines = "";
				        strcat(lines, "{FFFFFF}Тут вы можете изменить настройки безопасности вашего аккаунта.\nЭто поможет защитить его от взлома. Существует три вида защиты:\nс использованием Email, мобильного телефона или защитного кода.\n");
				        strcat(lines, "Если вы включите защиту, то при авторизации помимо пароля будет\nзапрашиваться ввод Email, телефона или кода (в зависимости от\n");
				        strcat(lines, "Ваших настроек). Более подробно вы узнаете о каждом, выбрав\nнужный пункт в меню безопасности. Существует три вида проверки:\n\n");
				        strcat(lines, "{6699FF}1. Запрашивать всегда\n2. Запрашивать только если IP не совпадает с моим\n3. Не запрашивать\n\n");
				        strcat(lines, "{FFFFFF}Первый и третий пункт, думаем не требует объяснений. Что касается\nвторого, то система будет запрашивать ввод только если текущая\nподсеть");
				        strcat(lines, "(первые 2 цифры IP адреса) игрока не совпадает с той,\nкоторая была записана при регистрации. Другими словами система\nвыдаст запрос, ");
				        strcat(lines, "если под Вашим аккаунтом попытаются зайти с\nдругого компьютера.");
				        ShowPlayerDialog(playerid, D_MENU+21, d_Box, "{6699FF}Информация о настройках", lines, "Назад", "Выход");
					}
					else return ShowPlayerDialog(playerid, D_MENU, d_List, "{6699FF}Меню игрока", "1. Статистика\n2. Команды сервера\n3. Правила сервера\n4. Помощь по серверу\n5. Настройки безопасности\n6. Улучшения\n7. Личные настройки\n8. Связь с администрацией\n9. Траквилизатор", "Выбрать", "Выход");
				}
				case 1: ShowPlayerDialog(playerid, D_MENU+23, d_Input, "{6699FF}Установка секретного вопроса", "{FFFFFF}Введите ваш придуманный секретный вопрос\nВвести его следует в целях восстановления\nадреса электронной почты в случаях утери.\n\nПосле указания вы должны ввести секретный\nответ на Ваш вопрос.", "Далее", "Назад");
			}
		}
		case D_MENU+21:
		{
		    if(response)
		    {
		        return ShowPlayerDialog(playerid, D_MENU+20, d_List, "{6699FF}Настройки безопасности", "{FFFFFF}1. Информация о настройках\n2. Установка секретного вопроса\n3. Матричная защита", "Выбрать", "Назад");
			}
			else return true;
		}
		case D_MENU+22:
		{
		    if(response) return true;
		    else return ShowPlayerDialog(playerid, D_MENU+20, d_List, "{6699FF}Настройки безопасности", "{FFFFFF}1. Информация о настройках\n2. Установка секретного вопроса\n3. Матричная защита", "Выбрать", "Назад");
		}
		case D_MENU+23:
		{
		    if(response)
		    {
		        return ShowPlayerDialog(playerid, D_MENU+27, d_Input, "{6699FF}Установка секретного ответа", "{FFFFFF}Введите ваш придуманный секретный ответ\nВвести его следует в целях ответа на секретный вопрос.\nПри попытке взлома ваш аккаунт\nпредохранится.\n\nНикому не передавать секретный ответ.\nИначе вы рискуете потерять аккаунт.", "Готово", "Выход");
			}
			else return ShowPlayerDialog(playerid, D_MENU+20, d_List, "{6699FF}Настройки безопасности", "{FFFFFF}1. Информация о настройках\n2. Установка секретного вопроса\n3. Матричная защита", "Выбрать", "Назад");
		}
		case D_ADMIN:
		{
  			if(!response) return true;
		    if(!strlen(inputtext)) return ShowPlayerDialog(playerid, D_ADMIN, d_Input, "{6699FF}Авторизация", "{FFFFFF}Введите администраторский ключ:", "Вход", "Выход");
			if(strlen(inputtext) < 1 || strlen(inputtext) > 32) return ShowPlayerDialog(playerid, D_ADMIN, d_Input, "{6699FF}Авторизация", "{FFFFFF}Введите администраторский ключ:", "Вход", "Выход");
      		if(strcmp(inputtext, cDataInfo[playerid][pAdmPassword], true)) return SendClientMessage(playerid, COLOR_LIGHTRED, NotTruePassword), KickFromServer(playerid);
        	else
			{
			    SetPVarInt(playerid, "AdmLogged", 1);
			    SetPVarInt(playerid, "SendAdmin", 1);
			    return SendAdmin(COLOR_LIGHTRED, "[A] Игрок %s (ID: %i) авторизовался(ась) как %s", GetName(playerid), playerid, Admins_Type(playerid));
			}
		}
		case D_ADMIN+1:
		{
  			if(!response) return true;
  			SetPVarInt(playerid, "PlayerStats", listitem+1);
			switch(listitem)
			{
			   	case 0: return ShowPlayerDialog(playerid, D_ADMIN+2, d_Input, "{6699FF}Имя игрока", "{FFFFFF}Введите ник для игрока:", "Изменить", "Назад");
			   	case 1: return ShowPlayerDialog(playerid, D_ADMIN+2, d_Input, "{6699FF}Опыт игрока", "{FFFFFF}Введите Опыт для игрока:", "Изменить", "Назад");
			   	case 2: return ShowPlayerDialog(playerid, D_ADMIN+2, d_Input, "{6699FF}Уровень игрока", "{FFFFFF}Введите уровень для игрока:", "Изменить", "Назад");
			    case 3: return ShowPlayerDialog(playerid, D_ADMIN+2, d_Input, "{6699FF}Пароль игрока", "{FFFFFF}Введите пароль для игрока:", "Изменить", "Назад");
				case 4: return ShowPlayerDialog(playerid, D_ADMIN+2, d_Input, "{6699FF}Уровень администратора", "{FFFFFF}Введите уровень администратора для игрока:", "Изменить", "Назад");
				case 5:
				{
				    lines = "";
					strcat(lines, "{FFFFFF}Введите уровень лидерства для игрока:\n\n");
					strcat(lines, "{6699FF}ОРГАНИЗАЦИИ:\n");
					strcat(lines, "{FFFFFF}1. Иллюминаты\n");
					strcat(lines, "{FFFFFF}2. Маджестик-12\n");
					strcat(lines, "{FFFFFF}3. Интерпол\n");
					strcat(lines, "{FFFFFF}4. Новые Сыны Свободы\n");
					strcat(lines, "{FFFFFF}5. Национальные Сепаратистские Войска\n");
					strcat(lines, "{FFFFFF}6. UNATCO\n");
					strcat(lines, "{FFFFFF}7. Партизаны\n");
					strcat(lines, "{FFFFFF}8. ООН\n");
					strcat(lines, "{FFFFFF}9. Управление полицией ЛС\n");
					strcat(lines, "{FFFFFF}10. Управление полицией ЛВ\n");
					strcat(lines, "{FFFFFF}11. FEMA\n");
					strcat(lines, "{FFFFFF}12. ТВ Центр\n");
					return ShowPlayerDialog(playerid, D_ADMIN+2, d_Input, "{6699FF}Уровень лидерства", lines, "Изменить", "Назад");
				}
			}
			return true;
		}
		case D_ADMIN+2:
		{
		    if(!response) return ShowPlayerDialog(playerid, D_ADMIN+1, DIALOG_STYLE_LIST, "{6699FF}Статистика", "{FFFFFF}1. Изменить имя игрока\n2. Изменить опыт игрока\n3. Изменить уровень игрока\n4. Изменить пароль игрока\n5. Изменить уровень администратора", "Выбрать", "Выход");
            if(!strcmp(inputtext, "NULLED", true)) { return true; }
			switch(GetPVarInt(playerid, "PlayerStats"))
			{
			    case 1:
			    {
			        if(!strlen(inputtext)) return ShowPlayerDialog(playerid, D_ADMIN+2, d_Input, "{6699FF}Имя игрока", "{FFFFFF}Введите ник для игрока:", "Изменить", "Назад");
      				mysql_format(Mysql, query, sizeof(query),"SELECT * FROM "TABLE_ACCOUNT" WHERE name = '%e'", inputtext);
					mysql_function_query(Mysql, query, true, "OnPlayerName", "si",inputtext, GetPVarInt(playerid, "Stats"));
				}
				case 2:
				{
				    if(!strlen(inputtext)) return ShowPlayerDialog(playerid, D_ADMIN+2, d_Input, "{6699FF}Опыт игрока", "{FFFFFF}Введите опыт для игрока:", "Изменить", "Назад");
 					if(strval(inputtext) < 1 || strval(inputtext) > 300) return ShowPlayerDialog(playerid, D_ADMIN+2, DIALOG_STYLE_INPUT, "{6699FF}Опыт игрока", "{FFFFFF}Введите опыт для игрока:", "Изменить", "Назад");
					SendMes(playerid, COLOR_CREAM, "[A] Вы установили опыт игроку %s на {FFFFFF}%d", GetName(GetPVarInt(playerid, "Stats")), strval(inputtext));
					SendMes(GetPVarInt(playerid, "Stats"), COLOR_CREAM, "%s %s установил вам опыт на {FFFFFF}%d", Admins_Type(playerid), GetName(playerid), strval(inputtext));
					SetPVarInt(GetPVarInt(playerid, "Stats"), "Опыт", strval(inputtext));
					SetPlayerInt(GetName(GetPVarInt(playerid, "Stats")), "Опыт", GetPVarInt(GetPVarInt(playerid, "Stats"),"pExp"));
				}
				case 3:
				{
				    if(!strlen(inputtext)) return ShowPlayerDialog(playerid, D_ADMIN+2, d_Input, "{6699FF}Уровень игрока", "{FFFFFF}Введите уровень для игрока:", "Изменить", "Назад");
 					if(strval(inputtext) < 1 || strval(inputtext) > 100) return ShowPlayerDialog(playerid, D_ADMIN+2, d_Input, "{6699FF}Уровень игрока", "{FFFFFF}Введите уровень для игрока:", "Изменить", "Назад");
					SendMes(playerid, COLOR_CREAM,"[A] Вы установили уровень игрока %s на {FFFFFF}%d", GetName(GetPVarInt(playerid, "Stats")), strval(inputtext));
					SendMes(GetPVarInt(playerid, "Stats"), COLOR_CREAM, "%s %s установил вам уровень игрока на {FFFFFF}%d", Admins_Type(playerid), GetName(playerid), strval(inputtext));
					SetPVarInt(GetPVarInt(playerid, "Stats"), "pLevel", strval(inputtext));
					SetPlayerScore(GetPVarInt(playerid, "Stats"), GetPVarInt(GetPVarInt(playerid, "Stats"), "pLevel"));
					SetPlayerInt(GetName(GetPVarInt(playerid, "Stats")), "Level", GetPVarInt(GetPVarInt(playerid, "Stats"), "pLevel"));
				}
				case 4:
				{
    				if(!strlen(inputtext)) return ShowPlayerDialog(playerid, D_ADMIN+2, d_Input, "{6699FF}Пароль игрока", "{FFFFFF}Введите пароль для игрока:", "Изменить", "Назад");
				    SendMes(playerid, COLOR_CREAM, "[A] Вы сменили пароль игрока %s на {FFFFFF}%s", GetName(GetPVarInt(playerid, "Stats")), inputtext);
				    SetPlayerStr(GetName(GetPVarInt(playerid, "Stats")),"Password",inputtext);
				}
				case 5:
				{
				    if(!strlen(inputtext)) return ShowPlayerDialog(playerid, D_ADMIN+2, d_Input, "{6699FF}Уровень администратора", "{FFFFFF}Введите уровень администратора для игрока:", "Изменить", "Назад");
 					if(strval(inputtext) < 0 || strval(inputtext) > 10) return ShowPlayerDialog(playerid, D_ADMIN+2, d_Input, "{6699FF}Уровень администратора", "{FFFFFF}Введите уровень администратора для игрока:", "Изменить", "Назад");
					SendMes(playerid, COLOR_CREAM, "[A] Вы установили уровень администратора игроку %s на {FFFFFF}%d", GetName(GetPVarInt(playerid, "Stats")), strval(inputtext));
					SendMes(GetPVarInt(playerid, "Stats"), COLOR_CREAM, "[A] %s установил вам уровень администратора на {FFFFFF}%d", GetName(playerid), strval(inputtext));
					SendClientMessage(GetPVarInt(playerid, "Stats"), COLOR_CREAM, "[A] Ваш администраторский пароль: {FFFFFF}'v0Ad3169Zp'");
					SendClientMessage(GetPVarInt(playerid, "Stats"), COLOR_CREAM, "[A] Рекомендуется сделать скриншот. Клавиша: {FFFFFF}'F8'");
					SetPVarInt(GetPVarInt(playerid, "Stats"), "pAdmin", strval(inputtext));
					SetPlayerInt(GetName(GetPVarInt(playerid, "Stats")), "Admin", GetPVarInt(GetPVarInt(playerid, "Stats"), "pAdmin"));
				}
				case 6:
				{
				    if(!strlen(inputtext))
				    {
	        			lines = "";
						strcat(lines, "{FFFFFF}Введите уровень лидерства для игрока:\n\n");
						strcat(lines, "{6699FF}ОРГАНИЗАЦИИ:\n");
						strcat(lines, "{FFFFFF}1. Иллюминаты\n");
						strcat(lines, "{FFFFFF}2. Маджестик-12\n");
						strcat(lines, "{FFFFFF}3. Интерпол\n");
						strcat(lines, "{FFFFFF}4. Новые Сыны Свободы\n");
						strcat(lines, "{FFFFFF}5. Национальные Сепаратистские Войска\n");
						strcat(lines, "{FFFFFF}6. UNATCO\n");
						strcat(lines, "{FFFFFF}7. Партизаны\n");
						strcat(lines, "{FFFFFF}8. ООН\n");
						strcat(lines, "{FFFFFF}9. Управление полиции ЛС\n");
						strcat(lines, "{FFFFFF}10. Управление полиции ЛВ\n");
						strcat(lines, "{FFFFFF}11. FEMA\n");
						strcat(lines, "{FFFFFF}12. ТВ Центр\n");
				    }
 					if(strval(inputtext) < 0 || strval(inputtext) > 20)
 					{
 					    lines = "";
						strcat(lines, "{FFFFFF}Введите уровень лидерства для игрока:\n\n");
						strcat(lines, "{6699FF}ОРГАНИЗАЦИИ:\n");
						strcat(lines, "{FFFFFF}1. Иллюминаты\n");
						strcat(lines, "{FFFFFF}2. Маджестик-12\n");
						strcat(lines, "{FFFFFF}3. Интерпол\n");
						strcat(lines, "{FFFFFF}4. Новые Сыны Свободы\n");
						strcat(lines, "{FFFFFF}5. Национальные Сепаратистские Войска\n");
						strcat(lines, "{FFFFFF}6. UNATCO\n");
						strcat(lines, "{FFFFFF}7. Партизаны\n");
						strcat(lines, "{FFFFFF}8. ООН\n");
						strcat(lines, "{FFFFFF}9. Управление полиции ЛС\n");
						strcat(lines, "{FFFFFF}10. Управление полиции ЛВ\n");
						strcat(lines, "{FFFFFF}11. FEMA\n");
						strcat(lines, "{FFFFFF}12. ТВ Центр\n");
 					}
					SendMes(playerid, COLOR_CREAM, "[A] Вы установили уровень лидерства игроку %s на {FFFFFF}%d", GetName(GetPVarInt(playerid, "Stats")), strval(inputtext));
					SendMes(GetPVarInt(playerid, "Stats"), COLOR_CREAM, "[A] %s установил вам уровень лидерства на {FFFFFF}%d", GetName(playerid), strval(inputtext));
					SendClientMessage(GetPVarInt(playerid, "Stats"), COLOR_CREAM, "[S] Рекомендуется перезайти для того, чтобы изменения вступили в силу.");
					
					SetPVarInt(GetPVarInt(playerid, "Stats"), "pLeader", strval(inputtext));
					SetPVarInt(GetPVarInt(playerid, "Stats"), "pMember", strval(inputtext));
					SetPVarInt(GetPVarInt(playerid, "Stats"), "pRank", 10);
					SetPVarInt(GetPVarInt(playerid, "Stats"), "pModel", LFract_Skin(GetPVarInt(playerid, "Stats")));
					SetPlayerSkin(GetPVarInt(playerid, "Stats"), GetPVarInt(GetPVarInt(playerid, "Stats"), "pModel"));
					SetPlayerInt(GetName(GetPVarInt(playerid, "Stats")), "Model", GetPVarInt(GetPVarInt(playerid, "Stats"), "pModel"));
					SetPlayerInt(GetName(GetPVarInt(playerid, "Stats")), "Leader", GetPVarInt(GetPVarInt(playerid, "Stats"), "pLeader"));
					SetPlayerInt(GetName(GetPVarInt(playerid, "Stats")), "Member", GetPVarInt(GetPVarInt(playerid, "Stats"), "pMember"));
					SetPlayerInt(GetName(GetPVarInt(playerid, "Stats")), "Rank", GetPVarInt(GetPVarInt(playerid, "Stats"), "pRank"));
				}
			}
			DeletePVar(playerid, "Stats");
			return true;
		}
		case D_CMDHELP:
		{
		    if(response)
		    {
		    	if(!GetPVarInt(playerid, "pAdmin")) return ShowPlayerDialog(playerid, D_MENU+1, d_List, "{6699FF}Команды сервера", "{ADFF2F}1. Получить описание\n{FFFFFF}2. Общие команды\n3. Команды авто\n4. Команды дома\n5. Команды организации", "Выбрать","Назад");
	 			return ShowPlayerDialog(playerid, D_MENU+1, d_List, "{6699FF}Команды сервера", "{ADFF2F}1. Получить описание\n{FFFFFF}2. Общие команды\n3. Команды авто\n4. Команды дома\n5. Команды организации\n6. Команды администратора", "Выбрать","Назад");
	 		}
	 		else return true;
		}
		case D_CMDHELP+1:
		{
		    if(response)
		    {
		        ShowPlayerDialog(playerid, D_CMDHELP+1, d_Input, "{6699FF}Описание команды", "{FFFFFF}Введите интересующую Вас команду\nдля получения её описания:", "Описание", "Назад");
		        if(!strcmp(inputtext, "/space_to_enabled_okay", true)) { return true; }
		        if(!strcmp(inputtext, "/setup", true)) { return SendClientMessage(playerid, -1, "{FFFFFF}[?] [ /setup ] - Меню игрока"); }
				if(!strcmp(inputtext, "/pmenu", true)) { return SendClientMessage(playerid, -1, "{FFFFFF}[?] [ /pmenu ] - Меню игрока"); }
				if(!strcmp(inputtext, "/help", true)) { return SendClientMessage(playerid, -1, "{FFFFFF}[?] [ /help ] - Меню игрока"); }
				if(!strcmp(inputtext, "/pass", true)) { return SendClientMessage(playerid, -1, "{FFFFFF}[?] [ /pass ] - Показ паспорта"); }
				if(!strcmp(inputtext, "/time", true)) { return SendClientMessage(playerid, -1, "{FFFFFF}[?] [ /time ] - Часы"); }
				if(!strcmp(inputtext, "/pay", true)) { return SendClientMessage(playerid, -1, "{FFFFFF}[?] [ /pay ] - Передача денег"); }
				if(!strcmp(inputtext, "/setspawn", true)) { return SendClientMessage(playerid, -1, "{FFFFFF}[?] [ /setspawn ] - Изменить место появления"); }
				if(!strcmp(inputtext, "/dinfo", true)) { return SendClientMessage(playerid, -1, "{FFFFFF}[?] [ /dinfo ] - Правила вождения"); }
				if(!strcmp(inputtext, "/action", true)) { return SendClientMessage(playerid, -1, "{FFFFFF}[?] [ /action ] - Действия"); }
				if(!strcmp(inputtext, "/do", true)) { return SendClientMessage(playerid, -1, "{FFFFFF}[?] [ /do ] - Действия от 1 лица"); }
				if(!strcmp(inputtext, "/me", true)) { return SendClientMessage(playerid, -1, "{FFFFFF}[?] [ /me ] - Выполнение действия"); }
				if(!strcmp(inputtext, "/n", true)) { return SendClientMessage(playerid, -1, "{FFFFFF}[?] [ /n ] - OOC чат"); }
				if(!strcmp(inputtext, "/try", true)) { return SendClientMessage(playerid, -1, "{FFFFFF}[?] [ /try ] - Попытка выполнить что-то"); }
				if(!strcmp(inputtext, "/s", true)) { return SendClientMessage(playerid, -1, "{FFFFFF}[?] [ /s ] - Выкрикнуть что-то"); }
				if(!strcmp(inputtext, "/ambient", true)) { return SendClientMessage(playerid, -1, "{FFFFFF}[?] [ /ambient ] - Звуковое сопровождение"); }
			}
			else
			{
			    if(!GetPVarInt(playerid, "pAdmin")) return ShowPlayerDialog(playerid, D_MENU+1, d_List, "{6699FF}Команды сервера", "{ADFF2F}1. Получить описание\n{FFFFFF}2. Общие команды\n3. Команды авто\n4. Команды дома\n5. Команды организации", "Выбрать","Назад");
	 			return ShowPlayerDialog(playerid, D_MENU+1, d_List, "{6699FF}Команды сервера", "{ADFF2F}1. Получить описание\n{FFFFFF}2. Общие команды\n3. Команды авто\n4. Команды дома\n5. Команды организации\n6. Команды администратора", "Выбрать","Назад");
			}
		}
		case D_ATM:
		{
		    if(!response) return true;
		    switch(listitem)
		    {
				case 0:
				{
				    format(lines, 128, "{FFFFFF}Баланс банковского счета: {9ACD32}%i{FFFFFF} долларов", GetPVarInt(playerid, "Bank"));
				    return ShowPlayerDialog(playerid, D_ATM+1, d_Box, "{6699FF}Баланс", lines, "Назад", "Выход");
				}
				case 1: return ShowPlayerDialog(playerid, D_ATM+2, d_Input, "{6699FF}Пополнение", "{FFFFFF}Введите кол-во долларов:", "Принять", "Назад");
				case 2: return ShowPlayerDialog(playerid, D_ATM+4, d_Input, "{6699FF}Снятие","{FFFFFF}Введите кол-во долларов:", "Принять", "Назад");
				case 3:
				{
				    if(GetPlayerBizz(playerid) == 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не владеете бизнесом.");
				    ShowPlayerDialog(playerid, D_ATM+5, d_Input, "{6699FF}Пополнение бизнес счёта","{FFFFFF}Введите кол-во долларов:", "Принять", "Назад");
				}
				case 4:
				{
				    if(!GetPlayerHouse(playerid)) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не владеете домом.");
				    ShowPlayerDialog(playerid, D_ATM+6, d_Input, "{6699FF}Пополнение домашнего счёта","{FFFFFF}Введите кол-во долларов:", "Принять", "Назад");
				}
				case 5:
				{
				    if(GetPlayerBizz(playerid) == 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не владеете бизнесом.");
					ShowPlayerDialog(playerid, D_ATM+7, d_Input, "{6699FF}Пополнение АЗС счёта","{FFFFFF}Введите кол-во долларов:", "Принять", "Назад");
				}
				case 6:
				{
				    if(GetPVarInt(playerid, "pPhone") == 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас нет мобильного телефона.");
				    ShowPlayerDialog(playerid, D_ATM+8, d_Input, "{6699FF}Оплата мобильной связи","{FFFFFF}Введите кол-во долларов:", "Принять", "Назад");
				}
			}
		}
		case D_ATM+1: return BankList(playerid);
		case D_ATM+2:
		{
		    if(!response) return BankList(playerid);
		    new price;
		    if(sscanf(inputtext, "i", price)) return ShowPlayerDialog(playerid, D_ATM+2, d_Input, "{6699FF}Пополнение", "{FFFFFF}Введите кол-во долларов:", "Принять", "Назад");
			if(price < 1) return ShowPlayerDialog(playerid, D_ATM+2, d_Input, "{6699FF}Пополнение", "{FFFFFF}Введите кол-во долларов:", "Принять", "Назад");
			if(GetMoney(playerid) < price) return ShowPlayerDialog(playerid, D_ATM+2, d_Input, "{6699FF}Пополнение", "{FFFFFF}Введите кол-во долларов:", "Принять", "Назад"), SendClientMessage(playerid, COLOR_LIGHTRED, NotEnoughMoney);
			SetPVarInt(playerid, "Bank", GetPVarInt(playerid, "Bank") +price);
			SetPlayerInt(GetName(playerid), "Bank", GetPVarInt(playerid, "Bank"));
		    GiveMoney(playerid, -price);
		    SendMes(playerid, COLOR_AQUA, "[B] Вы положили на счет: %i долларов. На счете: %i долларов.", price, GetPVarInt(playerid, "Bank"));
		    return BankList(playerid);
		}
		case D_ATM+3: return true;
		case D_ATM+4:
		{
		    if(!response) return BankList(playerid);
		    new price;
		    if(sscanf(inputtext, "i",price)) return ShowPlayerDialog(playerid, D_ATM+4, 1, "{6699FF}Снятие", "{FFFFFF}Введите кол-во долларов:", "Принять", "Назад");
		    if(price < 1) return ShowPlayerDialog(playerid, D_ATM+4, d_Input, "{6699FF}Снятие", "{FFFFFF}Введите кол-во долларов:", "Принять", "Назад");
			if(GetPVarInt(playerid, "Bank") < price) return ShowPlayerDialog(playerid, D_ATM+4, 1, "{6699FF}Снятие", "{FFFFFF}Введите кол-во долларов:", "Принять", "Назад"), SendClientMessage(playerid, COLOR_LIGHTRED, NotEnoughMoney);
   			SetPVarInt(playerid, "Bank", GetPVarInt(playerid, "Bank") -price);
   			SetPlayerInt(GetName(playerid), "Bank", GetPVarInt(playerid, "Bank"));
	    	GiveMoney(playerid, price);
		    SendMes(playerid, COLOR_AQUA, "[B] Вы сняли со счета: %i долларов. На счете: %i долларов.", price, GetPVarInt(playerid, "Bank"));
			return BankList(playerid);
		}
		case D_ACTION:
		{
			if(!response) return true;
			switch(listitem)
			{
			    case 0: return ShowPlayerDialog(playerid, D_ACTION+1, d_Input, "{6699FF}Крикнуть", "{FFFFFF}Введите текст который Вы хотите подставить:", "Отправить", "Назад");
			    case 1: return ShowPlayerDialog(playerid, D_ACTION+2, d_Input, "{6699FF}Шепнуть", "{FFFFFF}Введите текст который Вы хотите подставить:", "Отправить", "Назад");
			    case 2: return ShowPlayerDialog(playerid, D_ACTION+3, d_Input, "{6699FF}Действие", "{FFFFFF}Введите текст который Вы хотите подставить:", "Отправить", "Назад");
			    case 3: return ShowPlayerDialog(playerid, D_ACTION+4, d_Input, "{6699FF}Использовать", "{FFFFFF}Введите текст который Вы хотите подставить:", "Отправить", "Назад");
			    case 4: return ShowPlayerDialog(playerid, D_ACTION+5, d_Input, "{6699FF}Попытки", "{FFFFFF}Введите текст который Вы хотите подставить:", "Отправить", "Назад");
			}
		}
		case D_ACTION+1:
		{
		    if(response)
		    {
				if(!strlen(inputtext))
				{
				    return ShowPlayerDialog(playerid, D_ACTION+1, d_Input, "{6699FF}Крикнуть", "{FFFFFF}Введите текст который Вы хотите подставить:", "Отправить", "Назад");
				}
				if(!IsPlayerInAnyVehicle(playerid)) ApplyAnimation(playerid, "ON_LOOKERS", "shout_01", 1000.0,0,0,0,0,0,1);
      			format(lines, 128, "[...] %s крикнул: %s", cDataInfo[playerid][Name], inputtext);
	     		SetPlayerChatBubble(playerid, inputtext, COLOR_WHITE, 70.0, 10000);
        		return ProxDetector(playerid, 70.0, COLOR_WHITE, lines);
		    }
		    else
		    {
		        return ShowPlayerDialog(playerid, D_ACTION, d_List, "{6699FF}Меню действий", "{FFFFFF}1. Крикнуть\n2. Шепнуть\n3. Выполнить действие\n4. Использовать\n5. Попытки", "Выбрать", "Выход");
		    }
		}
		case D_ACTION+2:
		{
		    if(response)
		    {
		        if(!strlen(inputtext))
		        {
		            return ShowPlayerDialog(playerid, D_ACTION+2, d_Input, "{6699FF}Шепнуть", "{FFFFFF}Введите текст который Вы хотите подставить:", "Отправить", "Назад");
		        }
		        format(lines, 128, "[...] %s шепнул: %s", cDataInfo[playerid][Name], inputtext);
		        return ProxDetector(playerid, 5.0, COLOR_GREY, lines);
		    }
		    else ShowPlayerDialog(playerid, D_ACTION, d_List, "{6699FF}Меню действий", "{FFFFFF}1. Крикнуть\n2. Шепнуть\n3. Выполнить действие\n4. Использовать\n5. Попытки", "Выбрать", "Выход");
		}
		case D_ACTION+3:
		{
		    if(response)
		    {
		        if(!strlen(inputtext))
		        {
		            return ShowPlayerDialog(playerid, D_ACTION+3, d_Input, "{6699FF}Действие", "{FFFFFF}Введите текст который Вы хотите подставить:", "Отправить", "Назад");
		        }
		        SetPlayerChatBubble(playerid, inputtext, COLOR_PURPLE, 30.0, 5000);
		        format(lines, 128, "[ME] %s %s", GetName(playerid), inputtext);
		        return ProxDetector(playerid, 30.0, COLOR_PURPLE, lines);
		    }
		    else ShowPlayerDialog(playerid, D_ACTION, d_List, "{6699FF}Меню действий", "{FFFFFF}1. Крикнуть\n2. Шепнуть\n3. Выполнить действие\n4. Использовать\n5. Попытки", "Выбрать", "Выход");
		}
		case D_ACTION+4:
		{
		    if(response)
		    {
		        if(!strlen(inputtext))
		        {
		            return ShowPlayerDialog(playerid, D_ACTION+4, d_Input, "{6699FF}Использовать", "{FFFFFF}Введите текст который Вы хотите подставить:", "Отправить", "Назад");
		        }
		        SetPlayerChatBubble(playerid, inputtext, COLOR_PURPLE, 30.0, 5000);
		        format(lines, 64, "[...] %s (( %s ))", inputtext, GetName(playerid));
		        return ProxDetector(playerid, 30.0, COLOR_PURPLE, lines);
		    }
		    else ShowPlayerDialog(playerid, D_ACTION, d_List, "{6699FF}Меню действий", "{FFFFFF}1. Крикнуть\n2. Шепнуть\n3. Выполнить действие\n4. Использовать\n5. Попытки", "Выбрать", "Выход");
		}
		case D_ACTION+5:
		{
		    if(response)
		    {
		        if(!strlen(inputtext))
		        {
		            return ShowPlayerDialog(playerid, D_ACTION+5, d_Input, "{6699FF}Попытки", "{FFFFFF}Введите текст который Вы хотите подставить:", "Отправить", "Назад");
		        }
		        if(!strval(inputtext)) format(lines, 128, "[TRY] %s %s {FA0909}| Неудачно", GetName(playerid), inputtext);
		        else format(lines, 128, "[TRY]  %s %s {09FA29} | Удачно", GetName(playerid), inputtext);
		        SetPlayerChatBubble(playerid, inputtext, COLOR_PURPLE, 30.0, 5000);
		        return ProxDetector(playerid, 30.0, COLOR_PURPLE, lines);
		    }
		    else return ShowPlayerDialog(playerid, D_ACTION, d_List, "{6699FF}Меню действий", "{FFFFFF}1. Крикнуть\n2. Шепнуть\n3. Выполнить действие\n4. Использовать\n5. Попытки", "Выбрать", "Выход");
		}
		case D_STATS:
		{
		    if(response) ShowPlayerDialog(playerid, D_MENU, d_List, "{6699FF}Меню игрока", "1. Статистика\n2. Команды сервера\n3. Правила сервера\n4. Помощь по серверу\n5. Настройки безопасности\n6. Улучшения\n7. Личные настройки\n8. Связь с администрацией\n9. Дополнительно\n10. Траквилизатор", "Выбрать","Выход");
		    else return true;
		}
		case D_STATS+7:
		{
		    if(response)
		    {
		        switch(listitem)
		        {
		            case 0:
		            {
		                SetPVarInt(playerid, "pSpawns", 1);
		                SetPlayerInt(GetName(playerid), "Spawns", GetPVarInt(playerid, "pSpawns"));
		                SendClientMessage(playerid, -1, "[S] Место появления в игре изменено.");
					}
					case 1:
					{
					    SetPVarInt(playerid, "pSpawns", 2);
		                SetPlayerInt(GetName(playerid), "Spawns", GetPVarInt(playerid, "pSpawns"));
		                SendClientMessage(playerid, -1, "[S] Место появления в игре изменено.");
					}
					case 2: InDev(playerid);
					case 3: InDev(playerid);
		            case 4:
		            {
		                if(GetPVarInt(playerid, "pLeader") == 0)
						{
							SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не состоите в организации. Место появления изменить невозможно.");
		                }
		                else
		                {
		                    SetPVarInt(playerid, "pSpawns", 5);
							SetPlayerInt(GetName(playerid), "Spawns", GetPVarInt(playerid, "pSpawns"));
							SendClientMessage(playerid, -1, "[S] Место появления в игре изменено.");
						}
					}
				}
			}
		}
		case D_AUTO:
		{
		    if(response)
		    {
		        if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не в транспорте.");
		        new ivID = GetPlayerVehicleID(playerid);
		        if(OwnedVeh(ivID) != 0)
		        {
		            if(strmatch(VehicleInfo[OwnedVeh(ivID)][vOwner], GetName(playerid))) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Данный транспорт уже имеет владельца.");
		            if(strmatch(VehicleInfo[OwnedVeh(ivID)][vOwner], "None"))
		            {
		                if(VehicleInfo[OwnedVeh(ivID)][vPrice] < GetPlayerMoney(playerid))
		                {
		                    strmid(VehicleInfo[OwnedVeh(ivID)][vOwner], GetName(playerid), 0, 128, 128);
		                    new Float:vPos[4];
		                    GetVehiclePos(ivID, vPos[0], vPos[1], vPos[2]);
		                    GetVehicleZAngle(ivID, vPos[3]);
		                    strmid(VehicleInfo[OwnedVeh(ivID)][vPlate], GetName(playerid), 0, 32, 32);
		                    VehicleInfo[OwnedVeh(ivID)][vLocked] = 1;
		                    SetVehicleNumberPlate(ivID, GetName(playerid));
		                    SetVehicleToRespawn(ivID);
		                    SetVehiclePos(ivID, vPos[0], vPos[1], vPos[2]);
		                    SetVehicleZAngle(ivID, vPos[3]);
		                    PutPlayerInVehicle(playerid, ivID, 0);
		                    GivePlayerMoney(playerid, - VehicleInfo[OwnedVeh(ivID)][vPrice]);
		                    SendClientMessage(playerid, COLOR_WHITE, "[V] Вы успешно произвели покупку транспорта.");
		                    SendClientMessage(playerid, COLOR_CREAM, "[V] Доступны новые команды: /setup");
		                    TogglePlayerControllable(playerid, true);
		                    SaveVehicles(OwnedVeh(ivID));
                  		}
                    	else SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас недостаточно средств для покупки транспорта.");
					}
					else SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Данный вид транспорта не продаётся.");
				}
				else SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Данный транспорт не предназначен для покупки.");
			}
			else RemovePlayerFromVehicle(playerid), TogglePlayerControllable(playerid, true);
		}
		case D_AUTO+1:
		{
		    if(response)
		    {
		        switch(listitem)
		        {
		            case 0:
		            {
		                if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не в транспорте.");
					    new ivID = GetPlayerVehicleID(playerid);
		                if(VehicleInfo[OwnedVeh(ivID)][vLocked] == 1)
		                {
		                    if(OwnedVeh(ivID) != 0)
		                    {
		                        if(strmatch(VehicleInfo[OwnedVeh(ivID)][vOwner], GetName(playerid)))
		                        {
		                            VehicleInfo[OwnedVeh(ivID)][vLocked] = 0;
		                            SaveVehicles(OwnedVeh(ivID));
								}
								else return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Данный транспорт не принадлежит Вам.");
							}
							else return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Данный транспорт не приобретён.");
						}
						else
						{
						    if(OwnedVeh(ivID) != 0)
						    {
						        if(strmatch(VehicleInfo[OwnedVeh(ivID)][vOwner], GetName(playerid)))
						        {
						            VehicleInfo[OwnedVeh(ivID)][vLocked] = 1;
						            SaveVehicles(OwnedVeh(ivID));
								}
								else return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Этот транспорт не принадлежит Вам.");
							}
							else return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Данный транспорт не приобретён!.");
						}
					}
					case 1:
					{
					    if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не в транспорте.");
					    new ivID = GetPlayerVehicleID(playerid), Float:Pos[4];
					    GetVehiclePos(ivID, Pos[0], Pos[1], Pos[2]);
						GetVehicleZAngle(ivID, Pos[3]);
						if(OwnedVeh(ivID) != 0)
						{
						    if(strmatch(VehicleInfo[OwnedVeh(ivID)][vOwner], GetName(playerid)))
						    {
						        VehicleInfo[OwnedVeh(ivID)][vPosX] = Pos[0];
						        VehicleInfo[OwnedVeh(ivID)][vPosY] = Pos[1];
						        VehicleInfo[OwnedVeh(ivID)][vPosZ] = Pos[2];
						        VehicleInfo[OwnedVeh(ivID)][vPosA] = Pos[3];
						        VehicleInfo[OwnedVeh(ivID)][vPrice] = VehicleInfo[OwnedVeh(ivID)][vPrice];
						        strmid(VehicleInfo[OwnedVeh(ivID)][vOwner], "None", 0, 20, 20);
						        strmid(VehicleInfo[OwnedVeh(ivID)][vPlate], "Edit", 0, 32, 32);
						        VehicleInfo[OwnedVeh(ivID)][vLocked] = 1;
						        GivePlayerMoney(playerid, VehicleInfo[OwnedVeh(ivID)][vPrice] - 10000);
						        SendClientMessage(playerid, COLOR_WHITE, "[V] Вы успешно продали свой транспорт! Половина суммы за продажу была возвращена.");
						        SetVehicleNumberPlate(ivID, "Edit");
						        SetVehicleToRespawn(ivID);
						        SetVehiclePos(ivID, Pos[0], Pos[1], Pos[2]);
						        SetVehicleZAngle(ivID, Pos[3]);
						        SaveVehicles(OwnedVeh(ivID));
						        return true;
							}
							else return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Этот транспорт не принадлежит Вам.");
						}
						else return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Данный транспорт ещё не приобретён.");
					}
					case 2:
					{
					    if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не в транспорте.");
					    new ivID = GetPlayerVehicleID(playerid), Float:Pos[4];
					    if(OwnedVeh(ivID) != 0)
					    {
					        if(strmatch(VehicleInfo[OwnedVeh(ivID)][vOwner], GetName(playerid)))
					        {
					            GetVehiclePos(ivID, Pos[0], Pos[1], Pos[2]);
					            GetVehicleZAngle(ivID, Pos[3]);
				            	VehicleInfo[OwnedVeh(ivID)][vPosX] = Pos[0];
				            	VehicleInfo[OwnedVeh(ivID)][vPosY] = Pos[1];
								VehicleInfo[OwnedVeh(ivID)][vPosZ] = Pos[2];
								VehicleInfo[OwnedVeh(ivID)][vPosA] = Pos[3];
								SendClientMessage(playerid, COLOR_WHITE, "[V] Транспорт успешно припаркован.");
								SaveVehicles(OwnedVeh(ivID));
								return true;
							}
							else return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Этот транспорт не принадлежит Вам.");
						}
						else return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Данный транспорт ещё не приобретён.");
					}
					case 3: ShowPlayerDialog(playerid, D_AUTO+2, d_Input, "{6699FF}Изменение номера", "{FFFFFF}Введите номер транспорта который Вы хотите применить.\n\n\t{6699FF}Примечание:\n\t{6699FF}- Номер должен состоять из английских букв и цифр\n\t{6699FF}- Максимальное количество символов - 6", "Принять", "Назад");
				}
			}
		}
		case D_EXTRA:
		{
		    if(response)
		    {
		        if(GetPVarInt(playerid, "pExtra") > 0)
		        {
			        ShowPlayerDialog(playerid, D_EXTRA+1, d_List, "{6699FF}Дополнительные услуги", "1. Виртуальные средства\n2. Виртуальный модификатор X-10000\n3. Виртуальный регенератор Fire-PRO", "Выбрать", "Назад");
					return true;
				}
				else
					ShowPlayerDialog(playerid, D_EXTRA+3, d_Box, "{6699FF}Недостаточно денег", "{FFFFFF}Для доступа в данное меню сервера Вам необходимо пополнить\nбаланс. Используйте веб сайт: trnqlt.ru.\n\n{FF0000}ДЛЯ ДОСТУПА В ДАННЫЙ ПУНКТ МЕНЮ НЕОБХОДИМО ИМЕТЬ МИНИМУМ 1 РУБЛЬ НА СЧЕТУ", "Назад", "Выход");
		    }
		    else return ShowPlayerDialog(playerid, D_MENU, d_List, "{6699FF}Меню игрока", "1. Статистика\n2. Команды сервера\n3. Правила сервера\n4. Помощь по серверу\n5. Настройки безопасности\n6. Улучшения\n7. Личные настройки\n8. Связь с администрацией\n9. Траквилизатор", "Выбрать", "Выход");
		}
		case D_EXTRA+1:
		{
		    if(response)
		    {
		        switch(listitem)
		        {
		        }
		    }
		    if(!response)
		    {
     			new ExtraUses[720];
        		new ExtraUses2[64];
          		new ExtraUses3[64];
            	ExtraUses = "";
        		strcat(ExtraUses, "{FFFFFF}В этом разделе вы сможете приобрести и использовать дополнительные\n");
         		strcat(ExtraUses, "{FFFFFF}возможности сервера. Для избежания их массового использования мы\n");
          		strcat(ExtraUses, "{FFFFFF}сделали этот раздел закрытым. Доступ к нему можно получить,\n");
          		strcat(ExtraUses, "{FFFFFF}пополнив свой игровой счёт. Описание всех дополнительных\n");
          		strcat(ExtraUses, "{FFFFFF}возможностей, а также о способах пополнения счёта вы можете\n");
	          	strcat(ExtraUses, "{FFFFFF}узнать на сайте: {DAA520}www.trnqlt.ru (В разделе ''Дополнительно'')\n\n");
	          	strcat(ExtraUses, "{42AAFF}Информация:\n");
	          	format(ExtraUses2, sizeof(ExtraUses2), "{FFFFFF}Номер аккаунта:\t\t\t%i\n", GetPVarInt(playerid, "pID"));
	          	strcat(ExtraUses, ExtraUses2);
          		strcat(ExtraUses, "{FFFFFF}Текущее состояние счёта:\t\t0.00 руб.\n");
	         	format(ExtraUses3, sizeof(ExtraUses3), "{FFFFFF}Текущее состояние счёта:\t\t%i\n", playerid);
	          	strcat(ExtraUses, ExtraUses3);
	          	strcat(ExtraUses, "{FFFFFF}Поддерживаемые сервисы оплаты:  {FF0000}Я{FFFFFF}ндекс Деньги, WebMoney (WMR), Qiwi");
				return ShowPlayerDialog(playerid, D_EXTRA, d_Box, "{6699FF}Дополнительно", ExtraUses, "Просмотр", "Назад");
		    }
		}
		case D_EXTRA+3:
		{
		    if(response)
		    {
     			new ExtraUses[720];
        		new ExtraUses2[64];
          		new ExtraUses3[64];
            	ExtraUses = "";
        		strcat(ExtraUses, "{FFFFFF}В этом разделе вы сможете приобрести и использовать дополнительные\n");
         		strcat(ExtraUses, "{FFFFFF}возможности сервера. Для избежания их массового использования мы\n");
          		strcat(ExtraUses, "{FFFFFF}сделали этот раздел закрытым. Доступ к нему можно получить,\n");
          		strcat(ExtraUses, "{FFFFFF}пополнив свой игровой счёт. Описание всех дополнительных\n");
          		strcat(ExtraUses, "{FFFFFF}возможностей, а также о способах пополнения счёта вы можете\n");
	          	strcat(ExtraUses, "{FFFFFF}узнать на сайте: {DAA520}www.trnqlt.ru (В разделе ''Дополнительно'')\n\n");
	          	strcat(ExtraUses, "{42AAFF}Информация:\n");
	          	format(ExtraUses2, sizeof(ExtraUses2), "{FFFFFF}Номер аккаунта:\t\t\t%i\n", GetPVarInt(playerid, "pID"));
	          	strcat(ExtraUses, ExtraUses2);
          		strcat(ExtraUses, "{FFFFFF}Текущее состояние счёта:\t\t0.00 руб.\n");
	         	format(ExtraUses3, sizeof(ExtraUses3), "{FFFFFF}Текущее состояние счёта:\t\t%i\n", playerid);
	          	strcat(ExtraUses, ExtraUses3);
	          	strcat(ExtraUses, "{FFFFFF}Поддерживаемые сервисы оплаты:  {FF0000}Я{FFFFFF}ндекс Деньги, WebMoney (WMR), Qiwi");
				return ShowPlayerDialog(playerid, D_EXTRA, d_Box, "{6699FF}Дополнительно", ExtraUses, "Просмотр", "Назад");
		    }
		}
		case D_ADD:
	    {
			if(!response) return true;
			switch(listitem)
   			{
      			case 0:
	        	{
         			new tpc[450];
         			format(tpc, sizeof(tpc), "{FFFFFF}Для добавления дома укажите цену, тип интерьера дома\n\nНомера интерьеров от 1 до 35.\n\n\t{6699FF}Типы домов:\n\t1 - 8     (Экономический класс)\n\t9 - 15   (Бюджет класс)\n\t16 - 23 (Бизнес класс)\n\t24 - 28 (Премиум класс)\n\t29 - 33 (Элитный класс)");
         			return ShowPlayerDialog(playerid, D_ADD+1, d_Input, "{6699FF}Добавить дом", tpc, "Создать","Назад");
     			}
     			case 1: return ShowPlayerDialog(playerid, D_ADD+2, d_Input, "{6699FF}Добавить GPS", "{FFFFFF}Введите название локации:", "Создать", "Назад");
     			case 2:
     			{
	 			    lines = "";
	 			   	strcat(lines, "{FFFFFF}Для добавления входа / выхода укажите модель, тип, название\n\n\t{6699FF}Типы входа / выхода:\n\n\t");
				    strcat(lines, "1. Без отображения \t\t(ID: 0)\n\t2. Берётся, возрождается \t(ID: 2)");
				    strcat(lines, "\n\t3. Берётся, не появляется \t(ID: 3)\n\n\t{6699FF}Виды входа / выхода:\n\n\t");
				    strcat(lines, "1. Зелёная стрелка \t\t(ID: 19134)\n\t2. Жёлтый маркер \t\t(ID: 19135)\n\t3. Полосатая стрелка \t");
				    strcat(lines, "(ID: 19130)\n\t4. Оранжевая стрелка \t(ID: 19132)\n\t5. Красная стрелка \t(ID: 19133)");
			    	ShowPlayerDialog(playerid, D_ADD+3, d_Input, "{6699FF}Добавить вход / выход", lines, "Создать", "Назад");
				}
			 	case 3: return ShowPlayerDialog(playerid, D_ADD+4, d_Box, "{6699FF}Добавить терминал", "{FFFFFF}Вы уверены что хотите начать установку терминала ?", "Далее", "Назад");
     	        case 4:
     	        {
     	            lines = "";
     	            strcat(lines, "1. Агенство недвижимости\n2. Центральный банк\n3. Пригородный банк\n4. Кондитерская\n5. Магазин игрушек\n");
     	            strcat(lines, "6. Продуктовый магазин\n7. Компьютерный центр\n8. Клуб Alhambra\n9. Ресторан\n10. Автосалон\n");
     	            strcat(lines, "11. Автошкола\n12. Магазин оружия\n13. Магазин одежды Binco\n14. Магазин одежды DS\n15. Пиццерия\n");
     	            strcat(lines, "16. Пончиковая\n17. Фаст-фуд Burger Shot\n18. Магазин очков\n19. Ритуальные услуги\n");
     	            strcat(lines, "20. Парикмахерская\n21. Салон татуировок");
                    return ShowPlayerDialog(playerid, D_ADD+5, d_List, "{6699FF}Добавить бизнес", lines, "Далее", "Назад");
				}
     		}
			return true;
	    }
	    case D_ADD+1:
		{
		    if(!response)
		    {
		        ShowPlayerDialog(playerid, D_ADD, d_List,"{6699FF}Меню добавлений","{FFFFFF}1. Добавить дом\n2. Добавить GPS\n3. Добавить вход / выход\n4. Добавить терминал\n5. Добавить бизнес\n6. Добавить объект\n7. Добавить TextDraw\n8. Добавить нейрометку","Выбрать","Выход");
				return DeletePVar(playerid, "TPC");
			}
      		new price, type, tpc[450];
            if(sscanf(inputtext,"p<,>ii", price, type))
		    {
				format(tpc, sizeof(tpc),"{FFFFFF}Для добавления дома укажите цену, тип интерьера дома\n\nНомера интерьеров от 1 до 35.\n\n\t{6699FF}Типы домов:\n\t1 - 8     (Экономический класс)\n\t9 - 15   (Бюджет класс)\n\t16 - 23 (Бизнес класс)\n\t24 - 28 (Премиум класс)\n\t29 - 33 (Элитный класс)");
				return ShowPlayerDialog(playerid, D_ADD+1, d_Input, "{6699FF}Добавить дом", tpc, "Создать","Назад");
			}
   			++TOTALHOUSE;
    		GetPlayerPos(playerid, HouseInfo[TOTALHOUSE][hEntr][0], HouseInfo[TOTALHOUSE][hEntr][1], HouseInfo[TOTALHOUSE][hEntr][2]);
   			switch(type)
   			{
   			    case 1: format(tpc,90,"244.0883,305.0291,999.1484,Эконом,1");
	        	case 2: format(tpc,90,"266.9498,304.9866,999.1484,Эконом,2");
		        case 3: format(tpc,90,"422.3438,2536.4980,10.0000,Эконом,10");
   				case 4: format(tpc,90,"2233.6965,-1115.1270,1050.8828,Эконом,5");
			    case 5: format(tpc, 90,"327.9864,1477.7328,1084.4375,Эконом,15");
			    case 6: format(tpc, 90,"2218.3875,-1076.1580,1050.4844,Эконом,1");
   			    case 7: format(tpc, 90,"2259.5068,-1135.9337,1050.6328,Эконом,10");
      			case 8: format(tpc, 90,"2282.8831,-1140.0713,1050.8984,Эконом,11");
   			    case 9: format(tpc,90,"443.4504,509.2181,1001.4195,Бюджет,12");
  				case 10: format(tpc,90,"221.7789,1140.1970,1082.6094,Бюджет,4");
  				case 11: format(tpc,90,"261.1874,1284.2982,1080.2578,Бюджет,4");
  				case 12: format(tpc, 90,"-68.8411,1351.3397,1080.2109,Бюджет,6");
				case 13: format(tpc,90,"387.1313,1471.7137,1080.1949,Бюджет,15");
				case 14: format(tpc,90,"377.1231,1417.3163,1081.3281,Бюджет,15");
   			    case 15: format(tpc, 90,"-42.5525,1405.6432,1084.4297,Бюджет,8");
		        case 16: format(tpc,90,"226.4436,1239.9277,1082.1406,Бизнес,2");
				case 17: format(tpc,90,"226.2956,1114.1615,1080.9929,Бизнес,5");
				case 18: format(tpc, 90,"260.8800,1237.2365,1084.2578,Бизнес,9");
   			    case 19: format(tpc, 90,"2237.5413,-1081.1516,1049.04,Бизнес,2");
		        case 20: format(tpc,90,"295.2479,1472.2650,1080.2578,Бизнес,15");
		        case 21: format(tpc,90,"2807.6919,-1174.2933,1025.5703,Бизнес,8");
 				case 22: format(tpc, 90,"2196.8469,-1204.3524,1049.0234,Бизнес,6");
		        case 23: format(tpc, 90,"2365.3345,-1135.5907,1050.8826,Бизнес,8");
   			    case 24: format(tpc,90,"447.2238,1397.2926,1084.3047,Премиум,2");
   			    case 25: format(tpc, 90,"24.0716,1340.1615,1084.3750,Премиум,10");
   			    case 26: format(tpc,90,"-260.4934,1456.8430,1084.3672,Премиум,4");
   			    case 27: format(tpc, 90,"-283.6001,1471.2211,1084.3750,Премиум,15");
		        case 28: format(tpc,90,"2324.3977,-1149.0601,1050.7101,Премиум,12");
        		case 29: format(tpc, 90,"83.0791,1322.2808,1083.8662,Элитный,9");
		        case 30: format(tpc,90,"235.2748,1186.6809,1080.2578,Элитный,3");
		        case 31: format(tpc, 90,"140.2660,1366.1091,1083.8594,Элитный,5");
                case 32: format(tpc, 90,"234.1541,1063.7206,1084.2123,Элитный,6");
		        case 33: format(tpc, 90,"2317.7983,-1026.7651,1050.2178,Элитный,9");
			}
			sscanf(tcp, "p<,>ffff",HouseInfo[TOTALHOUSE][hCar][0], HouseInfo[TOTALHOUSE][hCar][1], HouseInfo[TOTALHOUSE][hCar][2], HouseInfo[TOTALHOUSE][hCar][3]);
   			sscanf(tpc,"p<,>fffs[16]i",HouseInfo[TOTALHOUSE][hExit][0],HouseInfo[TOTALHOUSE][hExit][1],HouseInfo[TOTALHOUSE][hExit][2],HouseInfo[TOTALHOUSE][hDiscript],HouseInfo[TOTALHOUSE][hInt][0]);
			HouseInfo[TOTALHOUSE][hPrice] = price;
			HouseInfo[TOTALHOUSE][hInt][1] = TOTALHOUSE;
   			strmid(HouseInfo[TOTALHOUSE][hOwner], "None", 0, strlen("None"), MAX_PLAYER_NAME);
			//HouseInfo[TOTALHOUSE][hMIcon] = CreateDynamicMapIcon(HouseInfo[TOTALHOUSE][hEntr][0], HouseInfo[TOTALHOUSE][hEntr][1], HouseInfo[TOTALHOUSE][hEntr][2], 31, 0,-1,-1,-1,200.0);
   			HouseInfo[TOTALHOUSE][hPickup][0] = CreatePickup(1273, 1, HouseInfo[TOTALHOUSE][hEntr][0], HouseInfo[TOTALHOUSE][hEntr][1], HouseInfo[TOTALHOUSE][hEntr][2]);
 			format(query, sizeof(query), "INSERT INTO "TABLE_HOUSE" (ID, EntrX, EntrY, EntrZ, ExitX, ExitY, ExitZ, CarX, CarY, CarZ, CarFA, Discript, Price, Inter, Virtual) \
		 	VALUES (%d,'%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%s',%d,%d,%d)",TOTALHOUSE, HouseInfo[TOTALHOUSE][hEntr][0],HouseInfo[TOTALHOUSE][hEntr][1],HouseInfo[TOTALHOUSE][hEntr][2],
			HouseInfo[TOTALHOUSE][hExit][0],HouseInfo[TOTALHOUSE][hExit][1],HouseInfo[TOTALHOUSE][hExit][2], HouseInfo[TOTALHOUSE][hCar][0],HouseInfo[TOTALHOUSE][hCar][1],HouseInfo[TOTALHOUSE][hCar][2],HouseInfo[TOTALHOUSE][hCar][3],
			HouseInfo[TOTALHOUSE][hDiscript],HouseInfo[TOTALHOUSE][hPrice],HouseInfo[TOTALHOUSE][hInt][0],HouseInfo[TOTALHOUSE][hInt][1]);
			mysql_function_query(Mysql, query, false, "", "");
			return SendMes(playerid, COLOR_LIGHTRED,"[H] Дом номер %i Создан", TOTALHOUSE);
		}
		case D_ADD+2:
		{
 			new Str[32];
    		if(sscanf(inputtext,"s[32]",Str)) return ShowPlayerDialog(playerid, D_ADD+2, d_Input, "{6699FF}Добавить GPS", "{FFFFFF}Введите название локации:", "Создать", "Назад");
			if(response)
			{
				++TOTALGPS;
				strmid(GPSInfo[TOTALGPS][gName], Str, 0, strlen(Str), MAX_PLAYER_NAME);
				GetPlayerPos(playerid, GPSInfo[TOTALGPS][gLoc][0], GPSInfo[TOTALGPS][gLoc][1], GPSInfo[TOTALGPS][gLoc][2]);
	 			format(query, 128, "INSERT INTO "TABLE_GPS" (ID, Name, X, Y, Z, Type) VALUES (%d, '%s', '%f', '%f', '%f', '%i')",TOTALGPS, Str, GPSInfo[TOTALGPS][gLoc][0], GPSInfo[TOTALGPS][gLoc][1], GPSInfo[TOTALGPS][gLoc][2]);
				mysql_function_query(Mysql, query, false, "", "");
				return SendMes(playerid, COLOR_LIGHTRED,"[A] GPS %i Создан", TOTALGPS);
			}
			else ShowPlayerDialog(playerid, D_ADD, d_List,"{6699FF}Меню добавлений", "1. Добавить дом\n2. Добавить GPS\n3. Добавить вход / выход\n4. Добавить терминал\n5. Добавить бизнес\n6. Добавить объект\n7. Добавить TextDraw\n8. Добавить нейрометку","Выбрать","Выход");
 		}
		case D_ADD+3:
		{
		    new type, model, name[32], Float:Cord[3];
     		if(sscanf(inputtext,"p<,>iis[32]",type,model,name))
     		{
     		    lines = "";
 			   	strcat(lines, "{FFFFFF}Для добавления входа / выхода укажите модель, тип, название\n\n\t{6699FF}Типы входа / выхода:\n\n\t");
			    strcat(lines, "1. Без отображения \t\t(ID: 0)\n\t2. Берётся, возрождается \t(ID: 2)");
			    strcat(lines, "\n\t3. Берётся, не появляется \t(ID: 3)\n\n\t{6699FF}Виды входа / выхода:\n\n\t");
			    strcat(lines, "1. Зелёная стрелка \t\t(ID: 19134)\n\t2. Жёлтый маркер \t\t(ID: 19135)\n\t3. Полосатая стрелка \t");
			    strcat(lines, "(ID: 19130)\n\t4. Оранжевая стрелка \t(ID: 19132)\n\t5. Красная стрелка \t(ID: 19133)");
		    	ShowPlayerDialog(playerid, D_ADD+3, d_Input, "{6699FF}Добавить вход / выход", lines, "Создать", "Назад");
			}
   			if(response)
			{
				GetPlayerPos(playerid, Cord[0], Cord[1], Cord[2]);
				format(coordc, sizeof(coordc), "%f, %f, %f, %d, %d, %d, %d, %s", Cord[0], Cord[1], Cord[2], model, type, GetPlayerInterior(playerid),GetPlayerVirtualWorld(playerid), name);
	            SendClientMessage(playerid, COLOR_LIGHTRED, "[A] Координаты созданы. Установите выходные координаты: /ppc");
	            SetPVarInt(playerid,"PPC", 1);
            }
            else ShowPlayerDialog(playerid, D_ADD, d_List,"{6699FF}Меню добавлений", "1. Добавить дом\n2. Добавить GPS\n3. Добавить вход / выход\n4. Добавить терминал\n5. Добавить бизнес\n6. Добавить объект\n7. Добавить TextDraw\n8. Добавить нейрометку","Выбрать","Выход");
    	}
		case D_ADD+4:
   		{
   		    if(response)
   		    {
	   		    new Float:Cord[4];
	   		    GetPlayerPos(playerid, Cord[0], Cord[1], Cord[2]);
	   		    GetPlayerFacingAngle(playerid, Cord[3]);
	   		    SetPVarInt(playerid, "ATM", 1);
	   		    new objectid = CreateObject(2754, Cord[0], Cord[1], Cord[2]-0.35, 0.0, 0.0, 0.0);
	   		    SetPVarInt(playerid, "ObjectATM", objectid), EditObject(playerid, objectid);
   		    }
   		    else ShowPlayerDialog(playerid, D_ADD, d_List,"{6699FF}Меню добавлений", "1. Добавить дом\n2. Добавить GPS\n3. Добавить вход / выход\n4. Добавить терминал\n5. Добавить бизнес\n6. Добавить объект\n7. Добавить TextDraw\n8. Добавить нейрометку","Выбрать","Выход");
   		}
   		case D_ADD+5:
   		{
   		    if(response)
   		    {
	   		    switch(listitem)
	   		    {
	   		        case 0: format(c_business, sizeof(c_business), "1494.4468, 1303.5784, 1093.2891, 1501.6743, 1306.4769, 1093.2891, 3, 35, 1");
	   		        case 2: format(c_business, sizeof(c_business), "1455.8530, -977.3076, -79.2749, 1463.3005, -982.7077, -79.2749, 0, 52, 3");
	   		        case 4: format(c_business, sizeof(c_business), "-2240.7825, 137.2136,1035.4141, -2237.1941, 130.1793, 1035.4141, 6, 11, 5");
	   		        case 5: format(c_business, sizeof(c_business), "-25.9596, -188.2593, 1003.5469, -10.4987, -178.2574, 1003.5469, 17, 17, 6");
					case 8: format(c_business, sizeof(c_business), "-794.9959, 489.2806, 1376.1953, -787.9787, 500.0738, 1371.7422, 1, 50, 9");
					case 10: format(c_business, sizeof(c_business), "-2026.8778, -103.6028, 1035.1831, -2026.7643, -114.3421, 1035.1719, 3, 36, 11");
					case 12: format(c_business, sizeof(c_business), "207.6331, -111.2666,1005.1328, 207.6139, -100.3266, 1005.2578, 15, 45, 13");
					case 13: format(c_business, sizeof(c_business), "204.2840,-168.8608,1000.5234, 204.4176, -159.3506, 1000.5234, 14, 45, 14");
					case 18: format(c_business, sizeof(c_business), "343.7177, 305.0711, 999.1484, 348.6338, 302.6144, 999.1484, 6, 25, 19");
					case 19: format(c_business, sizeof(c_business), "411.9760, -54.4450, 1001.8984, 414.4109, -48.9723, 1001.8984, 12, 7, 20");
					case 20: format(c_business, sizeof(c_business), "-204.3588, -27.3473, 1002.2734, -201.9817, -25.0212, 1002.2734, 16, 39, 21");
				}
				return ShowPlayerDialog(playerid, D_ADD+6, d_Input, "{6699FF}Добавить бизнес", "{FFFFFF}Для создания бизнеса укажите цену, название", "Готово", "Назад");
			}
			else ShowPlayerDialog(playerid, D_ADD, d_List,"{6699FF}Меню добавлений","{FFFFFF}1. Добавить дом\n2. Добавить GPS\n3. Добавить вход / выход\n4. Добавить терминал\n5. Добавить бизнес\n6. Добавить объект\n7. Добавить TextDraw\n8. Добавить нейрометку","Выбрать","Выход");
		}
		case D_ADD+6:
		{
		    if(!response) return true;
  			new price,name[32];
  			if(sscanf(inputtext,"p<,>is[32]",price,name)) return ShowPlayerDialog(playerid, D_ADD+7, d_Input, "{6699FF}Добавить бизнес", "{FFFFFF}Для создания бизнеса укажите цену, название", "Готово", "Назад");
			if(price < 1) return ShowPlayerDialog(playerid, D_ADD+7, d_Input, "{6699FF}Добавить бизнес", "{FFFFFF}Для создания бизнеса укажите цену, название", "Готово", "Назад");
			TOTALBIZZ++;
            sscanf(c_business,"p<,>ffffffiii",
            BizzInfo[TOTALBIZZ][bExitx],BizzInfo[TOTALBIZZ][bExity],BizzInfo[TOTALBIZZ][bExitz],
            BizzInfo[TOTALBIZZ][bMenux],BizzInfo[TOTALBIZZ][bMenuy],BizzInfo[TOTALBIZZ][bMenuz],
			BizzInfo[TOTALBIZZ][bInt],BizzInfo[TOTALBIZZ][bMIcon], BizzInfo[TOTALBIZZ][bType]);
		    GetPlayerPos(playerid,BizzInfo[TOTALBIZZ][bEntrx],BizzInfo[TOTALBIZZ][bEntry],BizzInfo[TOTALBIZZ][bEntrz]);
			strmid(BizzInfo[TOTALBIZZ][bOwner], "None", 0, strlen("None"), MAX_PLAYER_NAME);
            strmid(BizzInfo[TOTALBIZZ][bName], name, 0, strlen(name), MAX_PLAYER_NAME);
            BizzInfo[TOTALBIZZ][bVW] = TOTALBIZZ; BizzInfo[TOTALBIZZ][bPrice] = price;
			BizzInfo[TOTALBIZZ][bEnter] = 100; BizzInfo[TOTALBIZZ][bTill] = 50;
			//if(BizzInfo[TOTALBIZZ][bType] > 22) BizzInfo[TOTALBIZZ][bIcon] = CreateDynamicMapIcon(BizzInfo[TOTALBIZZ][bEntrx], BizzInfo[TOTALBIZZ][bEntry], BizzInfo[TOTALBIZZ][bEntrz], BizzInfo[TOTALBIZZ][bMIcon], 0, -1, -1, -1, 200.0);
            if(BizzInfo[TOTALBIZZ][bType] != 22)
			{
			    format(lines, 128, "{6699FF}%s\n{FFFFFF}Предприятие продаётся", BizzInfo[TOTALBIZZ][bName]);
				LABELBIZZ[TOTALBIZZ] = Create3DTextLabel(lines,COLOR_GREEN,BizzInfo[TOTALBIZZ][bEntrx], BizzInfo[TOTALBIZZ][bEntry], BizzInfo[TOTALBIZZ][bEntrz], 20.0, 0, 1);
			 	BizzInfo[TOTALBIZZ][bPickup] = CreatePickup(19135,1, BizzInfo[TOTALBIZZ][bEntrx], BizzInfo[TOTALBIZZ][bEntry], BizzInfo[TOTALBIZZ][bEntrz]);
                BizzInfo[TOTALBIZZ][bMenu] = CreateDynamicCP(BizzInfo[TOTALBIZZ][bMenux],BizzInfo[TOTALBIZZ][bMenuy],BizzInfo[TOTALBIZZ][bMenuz], 1.0,BizzInfo[TOTALBIZZ][bVW],BizzInfo[TOTALBIZZ][bInt]);
			}
			else
			{
			    format(lines, 128, "{6699FF}%s\n{FFFFFF}АЗС продаётся", BizzInfo[TOTALBIZZ][bName],BizzInfo[TOTALBIZZ][bTill] / 3);
				LABELBIZZ[TOTALBIZZ] = Create3DTextLabel(lines,COLOR_GREEN,BizzInfo[TOTALBIZZ][bEntrx], BizzInfo[TOTALBIZZ][bEntry], BizzInfo[TOTALBIZZ][bEntrz],20.0,0,1);
			}
			format(query, sizeof(query), "INSERT INTO "TABLE_BIZZ" (id, x, y, z, xt, yt, zt,menux,menuy,menuz, vint, virt, owner, name, price, type, icon) VALUES (%i, '%f', '%f', '%f', '%f', '%f', '%f','%f', '%f', '%f',%i, %i, '%s', '%s', %i, %i, %i)",
			TOTALBIZZ, BizzInfo[TOTALBIZZ][bEntrx], BizzInfo[TOTALBIZZ][bEntry], BizzInfo[TOTALBIZZ][bEntrz], BizzInfo[TOTALBIZZ][bExitx], BizzInfo[TOTALBIZZ][bExity], BizzInfo[TOTALBIZZ][bExitz], BizzInfo[TOTALBIZZ][bMenux],BizzInfo[TOTALBIZZ][bMenuy],BizzInfo[TOTALBIZZ][bMenuz]
			,BizzInfo[TOTALBIZZ][bInt],BizzInfo[TOTALBIZZ][bVW],BizzInfo[TOTALBIZZ][bOwner],BizzInfo[TOTALBIZZ][bName], BizzInfo[TOTALBIZZ][bPrice], BizzInfo[TOTALBIZZ][bType],BizzInfo[TOTALBIZZ][bMIcon]);
			mysql_function_query(Mysql, query, false, "", "");
            return SendMes(playerid,COLOR_ORANGE,"[A] Бизнес №%d создан.", TOTALBIZZ);
		}
   		case D_DRIVE_EXAM:
   		{
   		    if(response)
   		    {
			   	lines = "";
				strcat(lines, "{6699FF}Ниже приведён перечень клавиш управления транспортом и их описание:\n\n");
				strcat(lines, "{0F8FCD}Левый Ctrl\t{FFFFFF}завести или заглушить двигатель\n");
				strcat(lines, "{0F8FCD}Левый Alt\t{FFFFFF}включить или выключить фары\n");
				strcat(lines, "{0F8FCD}Правый Ctrl\t{FFFFFF}открыть или закрыть машину {6699FF}(только для домашней машины)\n");
				strcat(lines, "{0F8FCD}Num 4\t\t{FFFFFF}включить или выключить ограничитель скорости\n");
				strcat(lines, "{0F8FCD}Num 8\t\t{FFFFFF}управление капотом и багажником {6699FF}(если они имеются у данной модели)\n");
				strcat(lines, "{0F8FCD}Num 2\t\t{FFFFFF}заправить транспорт {6699FF}(подробнее в следующих разделах)\n\n");
				strcat(lines, "{FDC910}Постарайтесь запомнить назначения клавиш управления\nКогда будете готовы нажмите 'Далее'");
				ShowPlayerDialog(playerid, D_DRIVE_EXAM+1, d_Box, "{6699FF}Раздел 1: Управление системами автомобиля", lines, "Далее", "Назад");
			}
			else return true;
		}
		case D_DRIVE_EXAM+1:
		{
		    if(response)
		    {
		        for(new i; i < 22; ++i) TextDrawShowForPlayer(playerid, Speed[playerid][i]);
		    
			    lines = "";
			    strcat(lines, "{FFFFFF}Панель индикаторов появляется в правом нижнем углу экрана как только вы садитесь в любой транспорт\n");
			    strcat(lines, "{FFFFFF}Она информирует водителя о его текущем состоянии. Итак, рассмотрим основные элементы на этой панели:\n\n");
			    strcat(lines, "\t{FFFFFF}SPEED: 50 {FF0000}|||||{FFFFFF}||||||||||||\n");
			    strcat(lines, "\t{FFFFFF}FUEL:   7  {FF0000} |{FFFFFF}||||||||||||||||\n");
			    strcat(lines, "\t{FFFFFF}MILEAGE: 10 KM\n");
			    strcat(lines, "\t{FFFFFF}B {FF0000}C {FFFFFF}L {6699FF}B {FFFFFF}M\n\n");
			    strcat(lines, "{6699FF}На первой строчке панели находятся числовые индикаторы:\n");
			    strcat(lines, "{FFFFFF}SPEED: 50\t\tпоказывает текущую скорость транспорта\n");
			    strcat(lines, "{FFFFFF}FUEL:  7\t\tпоказывает количество бензина в баке\n");
			    strcat(lines, "{FFFFFF}MILEAGE: 10 KM\tпоказывает пробег транспорта который вы проехали, от пробега зависит цена транспорта\n\n");
			    strcat(lines, "{6699FF}На второй строчке находятся цветовые индикаторы:\n");
			    strcat(lines, "{FFFFFF}B\t(или {FF0000}B{FFFFFF}) показывает открыт ли капот или закрыт\n");
			    strcat(lines, "{FF0000}C\t{FFFFFF}(или {FFFFFF}O) показывает открыт или закрыт транспорт\n");
			    strcat(lines, "{FFFFFF}L\tиндикатор включенного света фар\n");
			    strcat(lines, "{6699FF}B\t{FFFFFF}показывает открыт или закрыт багажник в транспорте\n");
			    strcat(lines, "{FF0000}M\t{FFFFFF}загорается красным при включенном ограничителе скорости\n\n");
			    strcat(lines, "{6699FF}Примечания:\n1. Панель индикаторов обновляется раз в секунду\n2. Выключенные индикаторы во втором ряду {FFFFFF}белого {6699FF}цвета");
		    	ShowPlayerDialog(playerid, D_DRIVE_EXAM+2, d_Box, "{6699FF}Раздел 2: Панель индикаторов", lines, "Далее", "Назад");
			}
			else ShowPlayerDialog(playerid, D_DRIVE_EXAM, d_Box, "{6699FF}Введение", "{FFFFFF}Это пособие поможет вам хорошо подготовиться\nк экзамену по вождению\n\n{DAA520}Для того, чтобы начать обучение нажмите 'Далее'", "Далее", "Выход");
		}
		case D_DRIVE_EXAM+2:
		{
		    if(response)
		    {
		        for(new i; i < 22; ++i) TextDrawHideForPlayer(playerid, Speed[playerid][i]);
			    lines = "";
			    strcat(lines, "{FFFFFF}Транспорт время от времени необходимо заправлять. Сделать это можно двумя способами:\n\n");
			    strcat(lines, "{6699FF}1. На заправочной станции\n{FFFFFF}Для этого подъедьте к ней и нажмите{0F8FCD} Num 2{FFFFFF}. Каждое нажатие заправляет ваш транспорт на 10 литров\n\n");			    strcat(lines, "{6699FF}2. Заправка с канистры\n{FFFFFF}Такой способ подойдет если автомобиль не может ездить из-за отсутствия бензина\n");
			    strcat(lines, "{FFFFFF}Найдите ближайшую заправку и напишите {0F8FCD}/fill{FFFFFF}. Вы получите канистру ёмкостью 15 литров\n");
			    strcat(lines, "{FFFFFF}После этого просто подойдите к транспорту, который хотите заправить. 15 литров вполне хватит чтобы доехать до ближайшей заправки\n\n");
			    strcat(lines, "{999999}Полезный советы:\n1. Бензобак может вместить максимум 100 литров бензина. Это хватит на 30 минут беспрерывной работы двигателя\n");
			    strcat(lines, "{999999}2. Всегда выключайте двигатель когда выходите из машины или долго стоите на месте! Этим вы намного уменьшите расход бензина\n");
			    strcat(lines, "{999999}3. Чтобы не бежать за канистрой бензина если бензобак опустел можно вызвать механика (/p)hone\n\n");
			    strcat(lines, "{6699FF}Починить транспорт можно в любом покрасочном салоне либо вызвав механика (/p)hone\n");
			    strcat(lines, "{6699FF}Обратите внимание, что если купленный или арендованный вами транспорт взорвётся, то придётся покупать или арендовать его заново!");
			    ShowPlayerDialog(playerid, D_DRIVE_EXAM+3, d_Box, "{6699FF}Раздел 3: Заправка и ремонт", lines, "Далее", "Назад");
			}
			else
			{
				for(new i; i < 22; ++i) TextDrawHideForPlayer(playerid, Speed[playerid][i]);
				lines = "";
				strcat(lines, "{6699FF}Ниже приведён перечень клавиш управления транспортом и их описание:\n\n");
				strcat(lines, "{0F8FCD}Левый Ctrl\t{FFFFFF}завести или заглушить двигатель\n");
				strcat(lines, "{0F8FCD}Левый Alt\t{FFFFFF}включить или выключить фары\n");
				strcat(lines, "{0F8FCD}Правый Ctrl\t{FFFFFF}открыть или закрыть машину {6699FF}(только для домашней машины)\n");
				strcat(lines, "{0F8FCD}Num 4\t\t{FFFFFF}включить или выключить ограничитель скорости\n");
				strcat(lines, "{0F8FCD}Num 8\t\t{FFFFFF}управление капотом и багажником {6699FF}(если они имеются у данной модели)\n");
				strcat(lines, "{0F8FCD}Num 2\t\t{FFFFFF}заправить транспорт {6699FF}(подробнее в следующих разделах)\n\n");
				strcat(lines, "{FDC910}Постарайтесь запомнить назначения клавиш управления\nКогда будете готовы нажмите 'Далее'");
				ShowPlayerDialog(playerid, D_DRIVE_EXAM+1, d_Box, "{6699FF}Раздел 1: Управление системами автомобиля", lines, "Далее", "Назад");
			}
		}
		case D_DRIVE_EXAM+3:
		{
		    if(response)
		    {
			    format(ShowDriveDialog, sizeof(ShowDriveDialog), "%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s",
				DriveDialog[0], DriveDialog[2], DriveDialog[3], DriveDialog[4], DriveDialog[5], DriveDialog[6], DriveDialog[7], DriveDialog[8], DriveDialog[9], DriveDialog[10], DriveDialog[11], DriveDialog[12], DriveDialog[13], DriveDialog[14]);
				return ShowPlayerDialog(playerid, D_DRIVE_EXAM+4, d_Box, "{6699FF}Раздел 4: Правила дорожного движения", ShowDriveDialog, "Далее", "Назад");
			}
			else
			{
			    for(new i; i < 22; ++i) TextDrawShowForPlayer(playerid, Speed[playerid][i]);
			    
			    lines = "";
			    strcat(lines, "{FFFFFF}Панель индикаторов появляется в правом нижнем углу экрана как только вы садитесь в любой транспорт\n");
			    strcat(lines, "{FFFFFF}Она информирует водителя о его текущем состоянии. Итак, рассмотрим основные элементы на этой панели:\n\n");
			    strcat(lines, "\t{FFFFFF}SPEED: 50 {FF0000}|||||{FFFFFF}||||||||||||\n");
			    strcat(lines, "\t{FFFFFF}FUEL:   7  {FF0000} |{FFFFFF}||||||||||||||||\n");
			    strcat(lines, "\t{FFFFFF}MILEAGE: 10 KM\n");
			    strcat(lines, "\t{FFFFFF}B {FF0000}C {FFFFFF}L {6699FF}B {FFFFFF}M\n\n");
			    strcat(lines, "{6699FF}На первой строчке панели находятся числовые индикаторы:\n");
			    strcat(lines, "{FFFFFF}SPEED: 50\t\tпоказывает текущую скорость транспорта\n");
			    strcat(lines, "{FFFFFF}FUEL:  7\t\tпоказывает количество бензина в баке\n");
			    strcat(lines, "{FFFFFF}MILEAGE: 10 KM\tпоказывает пробег транспорта который вы проехали, от пробега зависит цена транспорта\n\n");
			    strcat(lines, "{6699FF}На второй строчке находятся цветовые индикаторы:\n");
			    strcat(lines, "{FFFFFF}B\t(или {FF0000}B{FFFFFF}) показывает открыт ли капот или закрыт\n");
			    strcat(lines, "{FF0000}C\t{FFFFFF}(или {FFFFFF}O) показывает открыт или закрыт транспорт\n");
			    strcat(lines, "{FFFFFF}L\tиндикатор включенного света фар\n");
			    strcat(lines, "{6699FF}B\t{FFFFFF}показывает открыт или закрыт багажник в транспорте\n");
			    strcat(lines, "{FF0000}M\t{FFFFFF}загорается красным при включенном ограничителе скорости\n\n");
			    strcat(lines, "{6699FF}Примечания:\n1. Панель индикаторов обновляется раз в секунду\n2. Выключенные индикаторы во втором ряду {FFFFFF}белого {6699FF}цвета");
		    	ShowPlayerDialog(playerid, D_DRIVE_EXAM+2, d_Box, "{6699FF}Раздел 2: Панель индикаторов", lines, "Далее", "Назад");
			}
		}
		case D_DRIVE_EXAM+4:
		{
		    if(response)
		    {
			    lines = "";
			    strcat(lines, "{FFFFFF}Надеемся вы всё внимательно прочли и готовы приступить к сдаче экзамена\n");			    strcat(lines, "{FFFFFF}Если вы сомневаетесь в чём-либо, то рекомендуем не рисковать и прочитать нужный раздел ещё раз!\n\n{FDC910}Желаем Вам удачи на экзамене!\nДля того чтобы завершить обучение нажмите 'Выход'");
			    ShowPlayerDialog(playerid, D_DRIVE_EXAM+5, d_Box, "{6699FF}Завершение", lines, "Выход", "Назад");
			}
			else
			{
				lines = "";
			    strcat(lines, "{FFFFFF}Транспорт время от времени необходимо заправлять. Сделать это можно двумя способами:\n\n");
			    strcat(lines, "{6699FF}1. На заправочной станции\n{FFFFFF}Для этого подъедьте к ней и нажмите{0F8FCD} Num 2{FFFFFF}. Каждое нажатие заправляет ваш транспорт на 10 литров\n\n");			    strcat(lines, "{6699FF}2. Заправка с канистры\n{FFFFFF}Такой способ подойдет если автомобиль не может ездить из-за отсутствия бензина\n");
			    strcat(lines, "{FFFFFF}Найдите ближайшую заправку и напишите {0F8FCD}/fill{FFFFFF}. Вы получите канистру ёмкостью 15 литров\n");
			    strcat(lines, "{FFFFFF}После этого просто подойдите к транспорту, который хотите заправить. 15 литров вполне хватит чтобы доехать до ближайшей заправки\n\n");
			    strcat(lines, "{999999}Полезный советы:\n1. Бензобак может вместить максимум 100 литров бензина. Это хватит на 30 минут беспрерывной работы двигателя\n");
			    strcat(lines, "{999999}2. Всегда выключайте двигатель когда выходите из машины или долго стоите на месте! Этим вы намного уменьшите расход бензина\n");
			    strcat(lines, "{999999}3. Чтобы не бежать за канистрой бензина если бензобак опустел можно вызвать механика (/p)hone\n\n");
			    strcat(lines, "{6699FF}Починить транспорт можно в любом покрасочном салоне либо вызвав механика (/p)hone\n");
			    strcat(lines, "{6699FF}Обратите внимание, что если купленный или арендованный вами транспорт взорвётся, то придётся покупать или арендовать его заново!");
			    ShowPlayerDialog(playerid, D_DRIVE_EXAM+3, d_Box, "{6699FF}Раздел 3: Заправка и ремонт", lines, "Далее", "Назад");
			}
		}
		case D_DRIVE_EXAM+5:
		{
		    if(response)
		    {
		        return true;
			}
		    else
		    {
		    	format(ShowDriveDialog, sizeof(ShowDriveDialog), "%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s",
				DriveDialog[0], DriveDialog[2], DriveDialog[3], DriveDialog[4], DriveDialog[5], DriveDialog[6], DriveDialog[7], DriveDialog[8], DriveDialog[9], DriveDialog[10], DriveDialog[11], DriveDialog[12], DriveDialog[13], DriveDialog[14]);
				return ShowPlayerDialog(playerid, D_DRIVE_EXAM+4, d_Box, "{6699FF}Раздел 4: Правила дорожного движения", ShowDriveDialog, "Далее", "Назад");
			}
		}
		case D_GPS:
		{
  			if(!cDataInfo[playerid][pGPS]) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас нет глобальной позиционной системы.");
    		if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы должны находиться в транспорте для использования этой команды.");
		    if(!response) return true;
   			new str[512], strr[1000];
		    SetPVarInt(playerid, "GPSID", listitem);
		    if(response)
		    {
				for(new i = 1; i <= TOTALGPS; i++)
				{
	   				if(GPSInfo[i][gType]-1 == listitem)
				    {
	       				format(str, 64, "{B3F9B0}> {FFFFFF}%s\n", GPSInfo[i][gName]);
	       				strcat(strr, str);
				    }
				}
				return ShowPlayerDialog(playerid, D_GPS+1, d_List, "{6699FF}Навигация", strr, "Выбрать", "Назад");
			}
   		}
		case D_GPS+1:
		{
  			if(!cDataInfo[playerid][pGPS]) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас нет глобальной позиционной системы.");
    		if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы должны находиться в транспорте для использования этой команды.");
		    if(response)
		    {
		        SetPVarInt(playerid,"GPS", 1);
				pNavID[playerid] = listitem;
				GPS_ACTIVE[playerid] = SetPlayerCheckpoint(playerid, GPSInfo[listitem+GetPVarInt(playerid, "GPSID")][gLoc][0], GPSInfo[listitem+GetPVarInt(playerid, "GPSID")][gLoc][1], GPSInfo[listitem+GetPVarInt(playerid, "GPSID")][gLoc][2], 3.0);
				if(IsValidObject(ok[playerid])) DestroyDynamicObject(ok[playerid]);
				ok[playerid] = CreateDynamicObject(19134, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
				Refresh(playerid);
				KillTimer(pNavTimer[playerid]);
				pNavTimer[playerid] = SetTimerEx("Refresh", 100, true, "d", playerid);
				for(new i; i < sizeof(NAVTD); i++) TextDrawShowForPlayer(playerid, NAVTD[i]);
				PlayerTextDrawShow(playerid, NAVpTD[playerid]);
				//DestroyDynamicCP(GPS_ACTIVE[playerid]);
			    //GPS_ACTIVE[playerid] = CreateDynamicCP(GPSInfo[listitem+GetPVarInt(playerid, "GPSID")][gLoc][0], GPSInfo[listitem+GetPVarInt(playerid, "GPSID")][gLoc][1], GPSInfo[listitem+GetPVarInt(playerid, "GPSID")][gLoc][2], 3.0, -1, -1, playerid);
				//SetPlayerMapIcon(playerid, 99, GPSInfo[listitem+GetPVarInt(playerid, "GPSID")][gLoc][0], GPSInfo[listitem+GetPVarInt(playerid, "GPSID")][gLoc][1], GPSInfo[listitem+GetPVarInt(playerid, "GPSID")][gLoc][2], 19, 0, MAPICON_GLOBAL);
				SendMes(playerid, COLOR_GREEN, "[G] Вы отметили на карте: %s", GPSInfo[listitem+GetPVarInt(playerid, "GPSID")][gName]);
				PlayerPlaySound(playerid, 1136, 0.0, 0.0, 0.0);
				DeletePVar(playerid, "GPSID");
  			}
		  	else
		  	{
   				format(lines, sizeof(lines), "{990000}ТЕКУЩЕЕ МЕСТОПОЛОЖЕНИЕ: %s\n1. Тестовые локации", GetPlayerZone(playerid));
	   			ShowPlayerDialog(playerid, D_GPS, d_Headers, "{6699FF}Навигация", lines, "Выбрать", "Выход");
		  	}
  			return true;
		}
		case D_ERROR: return ShowPlayerDialog(playerid, D_REG, d_Input, "{6699FF}Пароль", "{FFFFFF}Введите пароль для Вашего аккаунта\nОн будет запрашиваться каждый раз, при входе на сервер.\n\n\t{1DBF3A}ВАЖНО:\n\t- Пароль может состоять из русских и латинских символов\n\t- Пароль чувствителен к регистру\n\t- Длина пароля от 6-ти до 15-ти символов", "ОК","Назад");
		case D_ERROR+1: return ShowPlayerDialog(playerid, D_REG+1, d_Input, "{6699FF}Электронная почта", "{FFFFFF}Введите адрес вашей электронной почты\nИспользуя его, Вы сможете восстановить доступ к аккаунту\nв случае взлома или если забудете пароль\nУбедитесь в правильности ввода и нажмите 'ОК'", "ОК", "Назад");
		case D_ERROR+2: return ShowPlayerDialog(playerid, D_REG+4, d_Input, "{6699FF}Возраст", "{FFFFFF}Укажите игровой возраст вашего персонажа:\n\n{6699FF}Это повлияет на ход вашей игры.\nВозраст может быть от 18 до 65 лет\n\nВвод возраста влияет на принятие Вас в гильдию.\nИзменить возраст возможно только через 'Дополнительные возможности сервера'.","Готово", "Назад");
		case D_MOBILE:
		{
		    switch(listitem)
		    {
		        case 0:
		        {
					format(lines, sizeof(lines), "{FFFFFF}На Вашем мобильном счету: %i$", GetPVarInt(playerid, "pCashOnMobile"));
					return ShowPlayerDialog(playerid, D_MOBILE+1, d_Box, "{6699FF}Мобильный счёт", lines, "Назад", "Выход");
		        }
		        case 1:
		        {
		            format(lines, sizeof(lines), "%s\n", GetName(playerid));
					return ShowPlayerDialog(playerid, D_MOBILE+2, d_List, "{6699FF}Телефонная книга", lines, "Выбрать", "Назад");
		        }
		        case 2:
		        {
		            return ShowPlayerDialog(playerid, D_MOBILE+3, d_Box, "{6699FF}Добавить контакт", "{FFFFFF}Введите номер контакта и через запятую название контакта\n\n{6699FF}Например:\n\t- 740356, Rogar_Hillz\n\t- Номер не должен превышать 10 символов", "Добавить", "Назад");
		        }
		        case 3:
		        {
		            switch(GetPVarInt(playerid, "Phone"))
		            {
		                case 0:
		                {
		                    SetPVarInt(playerid, "Phone", 0);
		                	SendClientMessage(playerid, -1, "[M] Вы включили телефон.");
		                }
		                case 1:
		                {
		                    SetPVarInt(playerid, "Phone", 1);
		                	SendClientMessage(playerid, -1, "[M] Вы выключили телефон.");
		                }
		            }
		        }
		        
			}
		}
		case D_MOBILE+1:
		{
		    if(response) ShowPlayerDialog(playerid, D_MOBILE, d_List, "{6699FF}Сотовый телефон", "1. Посмотреть баланс\n2. Телефонная книга\n3. Добавить контакт\n4. Вкл/Откл телефон", "Выбрать", "Выход");
		}
		case D_MOBILE+2:
		{
		    if(!response) ShowPlayerDialog(playerid, D_MOBILE, d_List, "{6699FF}Сотовый телефон", "1. Посмотреть баланс\n2. Телефонная книга\n3. Добавить контакт\n4. Вкл/Откл телефон", "Выбрать", "Выход");
		}
		case D_MOBILE+3:
		{
		    if(!response) ShowPlayerDialog(playerid, D_MOBILE, d_List, "{6699FF}Сотовый телефон", "1. Посмотреть баланс\n2. Телефонная книга\n3. Добавить контакт\n4. Вкл/Откл телефон", "Выбрать", "Выход");
		}
		case D_WORK:
		{
		    if(response)
		    {
		        if(GetPVarInt(playerid, "pMember") == 0) SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не состоите в организации");
				LeaveFractionPlayer(playerid);
			    SendMes(playerid, COLOR_BLUE, "[F] %s покинул организацию по собственному желанию.", GetName(playerid)); // ERROR #1
		    }
		}
		case D_WORK+2:
		{
    		SetPVarInt(playerid, "OldLessSkin",GetPlayerSkin(playerid));
			SetPVarInt(playerid, "LessPil", 1);
			TextDrawShowForPlayer(playerid, ProcentDraw[playerid]);
			TextDrawShowForPlayer(playerid, AmountLDraw[playerid]);
			SetPVarInt(playerid, "Wood", TOTALTREE);
			TOTALTREE++;
			SetPlayerCheckpoint(playerid, Wood[GetPVarInt(playerid, "Wood")][0], Wood[GetPVarInt(playerid, "Wood")][1], Wood[GetPVarInt(playerid, "Wood")][2], 3.0);
			GivePlayerWeapon(playerid, 9, 1);
			SendClientMessage(playerid, -1, "[W] Вы начали работу на лесопилке, пожалуйста, спилите дерево.");
		}
		case D_WORK+3:
		{
            SendMes(playerid, -1, "[W] Вы закончили рабочий день, Ваш заработок: %i$", cDataInfo[playerid][pJobAmount][2]*2);
			GiveMoney(playerid, cDataInfo[playerid][pJobAmount][2]*2);
			if(IsPlayerAttachedObjectSlotUsed(playerid, 3)) RemovePlayerAttachedObject(playerid, 3);
			if(IsPlayerAttachedObjectSlotUsed(playerid, 4)) RemovePlayerAttachedObject(playerid, 4);
			cDataInfo[playerid][pJobAmount][2] = 0;
			DeletePVar(playerid, "OldLessSkin");
			DeletePVar(playerid, "LessPil");
			DeletePVar(playerid, "Wood");
			TextDrawHideForPlayer(playerid, ProcentDraw[playerid]);
			TextDrawHideForPlayer(playerid, AmountLDraw[playerid]);
			DisablePlayerCheckpoint(playerid);
			ResetPlayerWeapons(playerid);
		}
		case D_WORK+4:
		{
		    new Float:X, Float:Y, Float:Z;
		    if(!response) return true;
		    switch(listitem)
		    {
		        case 0: X=1097.6217, Y=-1796.5940, Z=13.6047;
		        case 1: X=-761.8846, Y=-142.5731, Z=65.6930;
		        case 2: X=2196.6277, Y=-2257.3381, Z=13.5469;
		        case 3: X=641.4872, Y=846.4285, Z=-42.9609;
		        case 4: X=-1585.9127, Y=715.8604, Z=-5.2422;
		        case 5: X=2289.5046, Y=2452.4695, Z=10.8203;
		        case 6: X=2495.5559, Y=-1666.6296, Z=13.0708;
		        case 7: X=2023.9126, Y=-1132.1450, Z=24.3797;
		        case 8: X=2743.6360, Y=-1398.1372, Z=35.9393;
		        case 9: X=1871.2664, Y=-1926.1224, Z=13.2740;
		        case 10: X=2138.2339, Y=-1616.7936, Z=13.2920;
		        case 11: X=-1521.9741, Y=480.8362, Z=7.1875;
		        case 12: X=1560.9878, Y=-1237.1444, Z=292.0180;
		    }
	    	SetPlayerPos(playerid, X, Y, Z);
	    	SetPlayerInterior(playerid,0);
	    	SetPlayerVirtualWorld(playerid,0);
		}
		case D_WORK+5:
		{
			if(!response) return 1;
    		SetPVarInt(playerid, "OldCargoSkin",GetPlayerSkin(playerid));
			SetPVarInt(playerid, "Cargo", 1);
			SetPlayerCheckpoint(playerid,2231.0959,-2285.3909,14.3751,1.4);
			TextDrawShowForPlayer(playerid, AmountDraw[playerid]);
			SendClientMessage(playerid, COLOR_PAYCHEC, "[W] Вы успешно устроились грузчиком.");
			return 1;
		}
		case D_WORK+6:
		{
			if(!response) return 1;
            SendMes(playerid, COLOR_PAYCHEC, "[W] Вы закончили рабочий день, Ваш заработок: %i$.",cDataInfo[playerid][pJobAmount][1]*250);
			GiveMoney(playerid, cDataInfo[playerid][pJobAmount][1]*250);
			if(IsPlayerAttachedObjectSlotUsed(playerid, 3)) RemovePlayerAttachedObject(playerid, 3);
			cDataInfo[playerid][pJobAmount][1] = 0;
			DeletePVar(playerid, "OldCargoSkin"); DeletePVar(playerid, "Cargo");
			TextDrawHideForPlayer(playerid, AmountDraw[playerid]);
			DisablePlayerCheckpoint(playerid);
			SavePlayer(playerid);
			return 1;
		}
		case D_SMI:
		{
		    if(!response) return true;
		    switch(listitem)
		    {
		        case 0: AdvertList(playerid);
		    }
		}
		case D_SMI+5:
		{
		    if(!response) return true;
		    SetPVarInt(playerid, "AdvertID", listitem+1);
		    ShowPlayerDialog(playerid, D_SMI+6, 2, "{6699FF}Объявления", "1. Прочитать объявление\n2. Изменить объявление\n3. Удалить объявление\n4. Отправить объявление\n5. Отправить администрации", "Выбрать", "Назад");
		}
		case D_SMI+6:
		{
		    if(!response) { DeletePVar(playerid, "AdvertID"); return AdvertList(playerid); }
      		switch(listitem)
      		{
      		    case 0:
  				{
          			lines = "";
  				    format(lines, 256, "{FFFFFF}Объявление: %s - Отправитель: %s",AI[GetPVarInt(playerid, "AdvertID")][aText],AI[GetPVarInt(playerid, "AdvertID")][aName]);
					ShowPlayerDialog(playerid, D_SMI+7, d_Box, "{6699FF}Объявления", lines, "Назад", "");
			  	}
      		    case 1:
			  	{
			  	    lines = "";
		    		format(lines, 256, "{FFFFFF}Объявление: %s - Отправитель: %s",AI[GetPVarInt(playerid, "AdvertID")][aText],AI[GetPVarInt(playerid, "AdvertID")][aName]);
					ShowPlayerDialog(playerid, D_SMI+8, d_Input, "{6699FF}Объявления", lines, "Отправить", "Назад");
			  	}
      		    case 2:
      		    {
      		        for(new i = GetPVarInt(playerid, "AdvertID"); i <= TOTALADVERT - 1; i++) memcpy(AI[i], AI[i+1], 0, 512);
					TOTALADVERT--;
					SendClientMessage(playerid, COLOR_LIGHTRED, "[S] Объявление успешно удалено с базы данных СМИ.");
      		        DeletePVar(playerid, "AdvertID");
      		        AdvertList(playerid);
      		    }
      		    case 3:
			  	{
			  	    if(AdvertTime > gettime())
				  	{
				  		DeletePVar(playerid, "AdvertID");
				  		SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Отправлять обьявления можно только по истечению 20 секунд.");
      		        	return AdvertList(playerid);
					}
					lines = "";
 	  				format(lines, 256, "[$] %s. Отправитель: %s. Телефон: %i",AI[GetPVarInt(playerid, "AdvertID")][aText], AI[GetPVarInt(playerid, "AdvertID")][aName], AI[GetPVarInt(playerid, "AdvertID")][aPhone]);
					SendClientMessageToAll(COLOR_GREEN, lines);
					lines = "";
 	  				format(lines, 256, "[$] Проверку произвёл %s %s)", Ranks_Type(playerid), GetName(playerid));
					SendClientMessageToAll(COLOR_GREEN, lines);
					for(new i = GetPVarInt(playerid, "AdvertID"); i <= TOTALADVERT - 1; i++) memcpy(AI[i], AI[i+1], 0, 512);
					TOTALADVERT--;
					AdvertTime = gettime() + 20;
					DeletePVar(playerid, "AdvertID");
      		        AdvertList(playerid);
			  	}
      		    case 4:
			  	{
			  	    lines = "";
			  	  	format(lines, 256, "[A] [$] %s. Отправитель: %s (Отправил: %s)",AI[GetPVarInt(playerid, "AdvertID")][aText], AI[GetPVarInt(playerid, "AdvertID")][aName], GetName(playerid));
					SendAdminMessage(COLOR_LIGHTRED, lines);
      				for(new i = GetPVarInt(playerid, "AdvertID"); i <= TOTALADVERT - 1; i++) memcpy(AI[i], AI[i+1], 0, 512);
					TOTALADVERT--;
					SendClientMessage(playerid, COLOR_LIGHTRED, "[S] Объявление отправлено администрации.");
      		        DeletePVar(playerid, "AdvertID");
      		        AdvertList(playerid);
			  	}
      		}
		}
		case D_SMI+7: ShowPlayerDialog(playerid, D_SMI+6, d_List, "{6699FF}Объявления", "1. Прочитать объявление\n2. Изменить объявление\n3. Удалить объявление\n4. Отправить объявление\n5. Отправить администрации", "Выбрать", "Назад");
		case D_SMI+8:
		{
		    if(!response) return ShowPlayerDialog(playerid, D_SMI+6, d_List, "{6699FF}Объявления", "1. Прочитать объявление\n2. Изменить объявление\n3. Удалить объявление\n4. Отправить объявление\n5. Отправить администрации", "Выбрать", "Назад");
		    new text[60];
		    if(sscanf(inputtext, "s[60]",text))
			{
 				format(lines, 128, "Объявление: %s - Отправитель: %s",AI[GetPVarInt(playerid, "AdvertID")][aText],AI[GetPVarInt(playerid, "AdvertID")][aName]);
				return ShowPlayerDialog(playerid, D_SMI+8, 1, "{6699FF}Объявление", lines, "Выбрать", "Выход");
			}
			strmid(AI[GetPVarInt(playerid, "AdvertID")][aText],text,0,strlen(text),sizeof(text));
			SendClientMessage(playerid, COLOR_GREEN, "[S] Объявление отредактировано и готово к отправке.");
			ShowPlayerDialog(playerid, D_SMI+6, d_List, "{6699FF}Объявления", "1. Прочитать объявление\n2. Изменить объявление\n3. Удалить объявление\n4. Отправить объявление\n5. Отправить администрации", "Выбрать", "Назад");
		}
		case D_TD:
		{
			PlayerRentTaxi[playerid] = false;
		    if(response)
		    {
				if(GetPlayerMoney(playerid) < TAXI_PRICERENT)
				{
				    new taZ[128];
				    format(taZ, sizeof(taZ), "[!] У Вас не достаточно средств для аренды. Цена: %d$", TAXI_PRICERENT);
					SendClientMessage(playerid, COLOR_LIGHTRED, taZ);
					RemovePlayerFromVehicle(playerid);
					return true;
				}
				GiveMoney(playerid, -TAXI_PRICERENT);
	       		SetGVarFloat("Fuel", 100, GetPlayerVehicleID(playerid));
	  			SendClientMessage(playerid, -1, "{B5E01B}[W] Вы успешно арендовали скотовозку. (Используйте команду: /unrent чтобы отменить аренду).");
	  			GetPlayerRentTaxi[playerid] = GetPlayerVehicleID(playerid);
	  			TaxiJobStarted[playerid] = true;
		    }
		    else
		    {
				RemovePlayerFromVehicle(playerid);
			}
		}
		case D_TD+1:
		{
		    if(response)
	    	{
			new taz2[256];
	    	if(GetPlayerMoney(playerid) < GetPriceTaxi(playerid))
			{
				SendClientMessage(playerid, -1, "{27C400}У Вас недостаточно средств для проезда. Укажите другой маршрут.");
			    format(taz2, sizeof(taz2), "{FFFFFF}\
				Пункт назначения:{FFFFFF} %s\n\
				{00FFFF}Стоимость проезда:{FFFFFF} %d$\n\
				{999999}Чтобы сменить пункт назначения\n\
				нажмите на кнопку 'Назад'\
				", GetPlayerPoint(playerid), GetPriceTaxi(GetPlayerCarDriver(playerid)));
				ShowPlayerDialog(playerid, D_TD+1, DIALOG_STYLE_MSGBOX, "{AFE01B}Информация", taz2, "Готово", "Назад");
				return 1;
			}
	    	format(taz2, sizeof(taz2), "{FFFFFF}\
			Пункт назначения:{FFFFFF} %s\n\
			{00FFFF}Оплата проезда:{FFFFFF} %d$\n\
			{999999}Чтобы отменить заказ\n\
			нажми на кнопку 'Отмена'\
			", GetPlayerPoint(playerid), GetPriceTaxi(GetPlayerCarPass(playerid)));
			ShowPlayerDialog(GetPlayerCarDriver(playerid), D_TD+2, DIALOG_STYLE_MSGBOX, "{AFE01B}Информация", taz2, "Готово", "Отмена");
	        SendClientMessage(playerid, -1, "{B5E01B}[M] Маршрут успешно выбран. Дождитесь ответа от водитель скотовозки");
	        PlayerEnteredPoint[playerid] = true;
		    }
		    else
		    {
				ShowPlayerDialog(playerid, 00000, DIALOG_STYLE_MSGBOX, "{AFE01B}Информация", "{FFFFFF}\
				Установите маркер на карте в то место,\n\
				в которое Вам необходимо отправиться.", "Закрыть", "");
		    }
		}
		case D_TD+2:
		{
			if(response)
		    {
			    PlayerTaxiStarted[playerid] = true;
				SetPlayerCheckpoint(playerid, LASTPOS[playerid][0], LASTPOS[playerid][1], LASTPOS[playerid][2], 5.0);
			    SetPlayerCheckpoint(GetPlayerCarPass(playerid), LASTPOS[playerid][0], LASTPOS[playerid][1], LASTPOS[playerid][2], 5.0);
			    SendClientMessage(GetPlayerCarPass(playerid), -1, "{B5E01B}[M] Скотовоз согласился довезти Вас до пункта назначения.");
				SendClientMessage(playerid, -1, "{B5E01B}[W] Отправляйтесь к красному маркеру, который указан на карте.");
				for(new i; i < MAX_TAXI; i++)
				{
				    if(TAXI_ID[i] == GetPlayerVehicleID(playerid))
				    {
				       	Update3DTextLabelText(TAXI_TEXT[i], 0xDEF200FF, "[{FFFFFF}Скотовозка{DEF200}]\n{EB1313}занято");
	           			break;
					}
				}
			}
		    else
		    {
				SendClientMessage(GetPlayerCarPass(playerid), -1, "{B5E01B}[M] Скотовоз отказался довезти Вас до пункта назначения.");
				SendClientMessage(playerid, -1, "{B5E01B}[W] Вы отказались довезти пассажира.");
				RemovePlayerFromVehicle(GetPlayerCarPass(playerid));
			}
			return true;
		}
		case D_TD+3:
		{
		    if(!response) return true;
			for(new d; d < MAX_PLAYERS; d++)
			{
				if(IsPlayerConnected(d) && IsTaxiCar(GetPlayerVehicleID(d))) RemovePlayerFromVehicle(d);
			}
			SendClientMessage(playerid, -1, "{B5E01B}[W] Аренда скотовозки успешна отменена.");
			KillTimer(ExitCarTimer[playerid]);
			TaxiJobStarted[playerid] = false;
			PlayerTaxiStarted[playerid] = false;
			SetVehicleToRespawn(GetPlayerRentTaxi[playerid]);
			GetPlayerRentTaxi[playerid] = INVALID_VEHICLE_ID;
			for(new d; d < MAX_PLAYERS; d++)
			{
		    	if(IsPlayerConnected(d) && PlayerCalledTaxi[d]) RemovePlayerMapIcon(playerid, d);
			}
		}
		case D_TD+4:
		{
		    if(!response) return true;
			switch(listitem)
			{
			    case 0: SendClientMessage(PlayerService[playerid], -1, "{B5E01B}[W] Скотина считает, что Вы обслужили его 'Отлично'.");
			    case 1: SendClientMessage(PlayerService[playerid], -1, "{B5E01B}[W] Скотина считает, что Вы обслужили его 'Хорошо'.");
			    case 2: SendClientMessage(PlayerService[playerid], -1, "{B5E01B}[W] Скотина считает, что Вы обслужили его 'Удовлетворительно'.");
	  			case 3: SendClientMessage(PlayerService[playerid], -1, "{B5E01B}[W] Скотина считает, что Вы обслужили его 'Ужасно'.");
			}
			PlayerService[playerid] = INVALID_PLAYER_ID;
		}
		case D_FRACTION:
		{
		    new p = GetPVarInt(playerid, "PlayerInvite");
		    if(response)
		    {
                SetPVarInt(playerid, "pMember", GetPVarInt(p, "pMember"));
		        SendMes(playerid,COLOR_BLUE,"[F] Вы присоединились к организации \"%s\"", playerid);
		        SendMes(p,COLOR_BLUE,"[F] %s принял предложение присоединиться к \"%s\"", GetName(playerid));
                SetPVarInt(playerid, "pJob", 0);
				SetPVarInt(playerid, "pRank", 1);
				Colors_Type(playerid);
				DeletePVar(playerid, "PlayerInvite");
				return true;
		    }
		    else SendMes(p,COLOR_BLUE,"[F] %s отклонил предложение присоединиться к \"%s\"", GetName(playerid));
            DeletePVar(playerid, "PlayerInvite");
		}
		case D_GUILD:
		{
		    if(response)
		    {
			    switch(listitem)
			    {
			        case 0:
			        {
			            new Guild_0[720];
			            new Guild_1[256];
			            new Guild_2[256];
			            Guild_0 = "";
			            strcat(Guild_0, "{FFFFFF}КПА - группа аугментированных активистов, которые борются за справедливое отношение с транслюдьми.\n");
			            strcat(Guild_0, "{FFFFFF}Несмотря на то, что КПА неправительственная организация, она имеет большое количество власти во многих\n");
			            strcat(Guild_0, "{FFFFFF}странах. Всё это благодаря тому, что очень много людей поддерживает коалицию. Такое влияние делает КПА угрозой\n");
			            strcat(Guild_0, "{FFFFFF}для тех, кто хочет ещё больше ограничить аугментированных людей.\n");
			            strcat(Guild_0, "{FFFFFF}Штаб-квартира расположена в северной части Лос-Сантоса. Также в зоне постапокалиптической драмы имеется Голем-сити,\n");
			            strcat(Guild_0, "{FFFFFF}в котором проживают изгнанные ауги. Ходят слухи, что они питают ненависть к каждому, кто решит потревожить их маня-мирок.\n\n");
			            strcat(Guild_0, "{42AAFF}\t\t\tКПА\n\n");
			            format(Guild_1, sizeof(Guild_1), "{FFFFFF}Лидер КПА:\t\t\tНе определён\n", GetPVarInt(playerid, "pID"));
			            strcat(Guild_0, Guild_1);
			            format(Guild_2, sizeof(Guild_2), "{FFFFFF}Текущее состояние коалиции:\tF26C00Под угрозой\n", GetPVarInt(playerid, "pExtra"));
			            strcat(Guild_0, Guild_2);
			            strcat(Guild_0, "{FFFFFF}Благотворительный фонд:  {FF0000}Я{FFFFFF}ндекс Деньги, WebMoney (WMR), Qiwi");
						return ShowPlayerDialog(playerid, D_GUILD+1, d_Box, "{6699FF}Коалиция за права аугментированных", Guild_0, "Просмотр", "Назад");
			        }
			    }
			}
		}
		case D_INDEV:
		{
		    if(response)
		    {

		    }
		}
		case D_GUILD+1:
		{
		    if(response)
		    {
		    }
		    else
		    {
		        ShowPlayerDialog(playerid, D_GUILD, d_List, "{6699FF}Информация о гильдиях", "1. Коалиция за права аугментированных\n2. Создать гильдию", "Выбрать", "Выход");
		    }
		}
		case D_PARK:
		{
		    if(response) return true;
		    else return false;
		}
		case D_LEADER:
		{
		    //1. Изменить название\n2. Изменить скины организации\n3. Изменить заработную плату\n4. Изменить ранги
			if(response)
			{
			    switch(listitem)
			    {
			        case 0:
			        {
			            ShowPlayerDialog(playerid, D_LEADER+1, d_Input, "{6699FF}Название организации", "{FFFFFF}Укажите желаемое название организации:", "Готово", "Назад");
			        }
			        case 1:
			        {
			            new leader_skins[512];
			            for(new idx = 1; idx <= TOTALFACTIONS; idx++)
						{
		    				SetPVarInt(playerid, "PlayerFact", idx);
						    idx = GetPVarInt(playerid, "PlayerFact");
	  			            format(leader_skins, sizeof(leader_skins), "1. %d\n2. %d\n3. %d\n4. %d\n5. %d", FactInfo[idx][fSkin][0]);
				            ShowPlayerDialog(playerid, D_LEADER+2, d_List, "{6699FF}Скины организации", leader_skins, "Выбрать", "Назад");
						}
			        }
			        case 2:
			        {
			        }
			        case 3:
			        {

						new leader_ranks[1024];
						for(new idx = 1; idx <= TOTALFACTIONS; idx++)
						{
						    SetPVarInt(playerid, "PlayerFact", idx);
						    //idx = GetPVarInt(playerid, "PlayerBizz");
							format(leader_ranks, sizeof(leader_ranks), "1. %s\n2. %s\n3. %s", FactInfo[idx][fRank][0], FactInfo[idx][fRank][1], FactInfo[idx][fRank][2]);
							ShowPlayerDialog(playerid, D_LEADER+4, d_List, "{6699FF}Ранги организации", leader_ranks, "Выбрать", "Назад");
						}
			        }
			    }
			}
		}
		case D_LEADER+1:
		{
		    if(response)
		    {
		    }
			else ShowPlayerDialog(playerid, D_LEADER, d_List, "{6699FF}Меню организации", "1. Изменить название\n2. Изменить скины организации\n3. Изменить заработную плату\n4. Изменить ранги", "Выбрать", "Выход");
		}
  		case D_LEADER+2:
		{
		    if(response)
		    {
				switch(listitem)
				{
				    case 0:
				    {
				        ShowPlayerDialog(playerid, D_LEADER+3, d_Input, "{6699FF}Скин организации", "{FFFFFF}Укажите ID желаемого скина организации:", "Готово", "Назад");
				    }
				}
		    }
			else
			{
			    new leader_skins[512];
	            for(new idx = 1; idx <= TOTALFACTIONS; idx++)
				{
    				SetPVarInt(playerid, "PlayerFact", idx);
				    idx = GetPVarInt(playerid, "PlayerFact");
		            format(leader_skins, sizeof(leader_skins), "1. %d\n2. %d\n3. %d\n4. %d\n5. %d", FactInfo[idx][fSkin][0]);
		            ShowPlayerDialog(playerid, D_LEADER+2, d_List, "{6699FF}Скины организации", leader_skins, "Выбрать", "Назад");
				}
			}
		}
		case D_LEADER+3:
		{
		    if(response)
		    {
		    }
			else return ShowPlayerDialog(playerid, D_LEADER, d_List, "{6699FF}Меню организации", "1. Изменить название\n2. Изменить скины организации\n3. Изменить заработную плату\n4. Изменить ранги", "Выбрать", "Выход");
		}
		case D_LEADER+4:
		{
		    if(response)
		    {
		        switch(listitem)
		        {
		            case 0:
		            {
		                ShowPlayerDialog(playerid, D_LEADER+5, d_Input, "{6699FF}Ранг организации", "{FFFFFF}Укажите желаемое название для ранга организации:", "Готово", "Назад");
		            }
		        }
		    }
			else return ShowPlayerDialog(playerid, D_LEADER, d_List, "{6699FF}Меню организации", "1. Изменить название\n2. Изменить скины организации\n3. Изменить заработную плату\n4. Изменить ранги", "Выбрать", "Выход");
		}
		case D_LEADER+5:
		{
		    if(response)
		    {
				switch(listitem)
				{
				    case 0:
				    {
				        if(!strlen(inputtext) || strlen(inputtext) < 6 || strlen(inputtext) > 32)
						{
		                    SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Указано неверное значение.");
							return ShowPlayerDialog(playerid, D_LEADER+5, d_Input, "{6699FF}Ранг организации", "{FFFFFF}Укажите желаемое название для ранга организации:", "Готово", "Назад");
			   			}
			   			for(new idx = 1; idx <= TOTALFACTIONS; idx++)
						{
			                FactInfo[idx][fRank][0] = strval(inputtext);
			                SetFactStr(idx, "fRank1", FactInfo[idx][fRank][0]);
			                SendClientMessage(playerid, COLOR_WHITE, "[S] Ранг №1 успешно записан в базу данных.");
						}
					}
					case 1:
				    {
				        if(!strlen(inputtext) || strlen(inputtext) < 6 || strlen(inputtext) > 32)
						{
		                    SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Указано неверное значение.");
							return ShowPlayerDialog(playerid, D_LEADER+5, d_Input, "{6699FF}Ранг организации", "{FFFFFF}Укажите желаемое название для ранга организации:", "Готово", "Назад");
			   			}
			   			for(new idx = 1; idx <= TOTALFACTIONS; idx++)
						{
			                FactInfo[idx][fRank][1] = strval(inputtext);
			                SetFactStr(idx, "fRank2", FactInfo[idx][fRank][1]);
			                SendClientMessage(playerid, COLOR_WHITE, "[S] Ранг №2 успешно записан в базу данных.");
						}
					}
				}
		    }
		    else
		    {
		        new leader_ranks[1024];
				for(new idx = 1; idx <= TOTALFACTIONS; idx++)
				{
					format(leader_ranks, sizeof(leader_ranks), "1. %s\n2. %s\n3. %s", FactInfo[idx][fRank][0], FactInfo[idx][fRank][1], FactInfo[idx][fRank][2]);
					ShowPlayerDialog(playerid, D_LEADER+4, d_List, "{6699FF}Ранги организации", leader_ranks, "Выбрать", "Назад");
				}
		    }
		}
		case D_AMBIENT:
		{
		    if(response)
		    {
			    switch(listitem)
			    {
			        case 0:
						PlayAudioStreamForPlayer(playerid, "http://127.0.0.1/positive.mp3", 0.0, 0.0, 0.0);
			        case 1:
			            PlayAudioStreamForPlayer(playerid, "http://127.0.0.1/ambient.mp3", 0.0, 0.0, 0.0);
			        case 2:
			            PlayAudioStreamForPlayer(playerid, "http://127.0.0.1/ramms.mp3", 0.0, 0.0, 0.0);
			        case 3:
			            PlayAudioStreamForPlayer(playerid, "http://127.0.0.1/warflower.mp3", 0.0, 0.0, 0.0);
			        case 4:
			            PlayAudioStreamForPlayer(playerid, "http://127.0.0.1/repeat.mp3", 0.0, 0.0, 0.0);
			        case 5:
			            PlayAudioStreamForPlayer(playerid, "http://127.0.0.1/royal.mp3", 0.0, 0.0, 0.0);
			        case 6:
			            PlayAudioStreamForPlayer(playerid, "http://127.0.0.1/rocious.mp3", 0.0, 0.0, 0.0);
			    }
			}
		}
		case D_AUG:
		{
		}
		case D_VAMPIRIC:
		{
		}
		case D_BUY:
		{
			if(!response) return 1;
	  		new i = GetPVarInt(playerid, "PlayerBizzz"),till = BizzInfo[i][bTill];
		    switch(listitem)
		    {
		        case 0:
		        {
		            if(GetPVarInt(playerid, "pPhone") == 1) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас уже есть мобильный телефон.");
					if(GetMoney(playerid) < till*14) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас недостаточно средств.");
					GivePlayerMoney(playerid, -till*14);
					BizzInfo[i][bMoney] += till*14;
					BizzPay[i] += till*14;
					BizzInfo[i][bProduct] -= 50;
					new randphone = 10000 + random(999999);
					SetPVarInt(playerid, "pPhone", randphone);
					SetPlayerInt(GetName(playerid), "Mobile", GetPVarInt(playerid, "pPhone"));
					SendMes(playerid, COLOR_BLUE, "[M] Вы купили мобильный телефон. Вам подарили номер: %i", randphone);
					SetBizzInt(i, "money", BizzInfo[i][bMoney]);
					SetBizzInt(i, "product", BizzInfo[i][bProduct]);
					HomeList(playerid, i);
				}
			}
		}
		case D_BUY+1:
		{
		    if(!response) return true;
		    if(response)
		    {
		        new i = GetPVarInt(playerid, "PlayerBizzz"),till = BizzInfo[i][bTill];
		        if(GetMoney(playerid) < till*16) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас недостаточно средств.");
				GivePlayerMoney(playerid, -till*16);
				BizzInfo[i][bMoney] += till*16;
				BizzPay[i] += till*6;
				BizzInfo[i][bProduct] -= 10;
		    	Bank_Money(playerid);
			}
		}
		case D_RULER:
		{
		    if(!response)
			{
				DeletePVar(playerid, "PlayerLic");
				return true;
			}
		    new p = GetPVarInt(playerid, "PlayerLic");
		    switch(listitem)
		    {
  				case 0:
  				{
  				    lines = "";
		    		format(lines, sizeof(lines), "{FFFFFF}Инструктор %s\nпредлагает Вам водительские права за 1000$",GetName(playerid));
  					ShowPlayerDialog(p, D_RULER+1, 0," {6699FF}Лицензия | Права", lines, "Получить", "Отмена");
				}
				case 1:
  				{
  				    lines = "";
		    		format(lines, sizeof(lines), "{FFFFFF}Инструктор %s\nпредлагает Вам лицензию на\nводный транспорт за 2500$",GetName(playerid));
  					ShowPlayerDialog(p,D_RULER+2,0,"{6699FF}Лицензия | Водные ТС", lines, "Получить", "Отмена");
				}
				case 2:
  				{
  				    lines = "";
		    		format(lines, sizeof(lines), "{FFFFFF}Инструктор %s\nпредлагает Вам лицензию на\nвоздушный транспорт за 10000$",GetName(playerid));
  					ShowPlayerDialog(p,D_RULER+3,0,"{6699FF}Лицензия | Воздушные ТС", lines, "Получить", "Отмена");
				}
				case 3:
  				{
  				    lines = "";
		    		format(lines, sizeof(lines), "{FFFFFF}Инструктор %s\nпредлагает Вам разрешение\nна ношение оружия за 5000$",GetName(playerid));
  					ShowPlayerDialog(p,D_RULER+4,0,"{6699FF}Лицензия | Оружие", lines, "Получить", "Отмена");
				}
			}
			SetPVarInt(p, "LicPlayer", playerid);
			DeletePVar(playerid, "PlayerLic");
		}
		case D_RULER+1:
		{
		    if(!response) {DeletePVar(playerid, "LicPlayer");return 1;}
		    new p = GetPVarInt(playerid, "LicPlayer");
		    if(GetPlayerMoney(playerid) < 1000)
			{
				SendClientMessage(playerid, COLOR_LIGHTRED,"[!] У Вас недостаточно средств.");
				SendClientMessage(p, COLOR_LIGHTRED,"[!] У игрока недостаточно средств.");
				DeletePVar(playerid, "LicPlayer");
				return 1;
			}
			GivePlayerMoney(playerid, -1000);
		    SendMes(playerid, COLOR_PAYCHEC, "[DL] Вы купили водительские права у %s за 1000$", GetName(p));
		    SendMes(p, COLOR_PAYCHEC, "[DL] %s купили у Вас водительские права за 1000$", GetName(playerid));
		    cDataInfo[playerid][pLic][0] = 1;
			DeletePVar(playerid, "LicPlayer");
		}
		case D_RULER+2:
		{
		    if(!response) {DeletePVar(playerid, "LicPlayer");return 1;}
		    new p = GetPVarInt(playerid, "LicPlayer");
		    if(GetPlayerMoney(playerid) < 2500)
			{
				SendClientMessage(playerid, COLOR_LIGHTRED,"[!] У Вас недостаточно средств.");
				SendClientMessage(p, COLOR_LIGHTRED,"[!] У игрока недостаточно средств.");
				DeletePVar(playerid, "LicPlayer");
				return 1;
			}
			GivePlayerMoney(playerid, -2500);
		    SendMes(playerid, COLOR_PAYCHEC, "[DL] Вы купили лицензию на водный транспорт у %s за 2500$", GetName(p));
		    SendMes(p, COLOR_PAYCHEC, "[DL] %s купили у Вас лицензию на водный транспорт за 2500$", GetName(playerid));
		    cDataInfo[playerid][pLic][1] = 1;
			DeletePVar(playerid, "LicPlayer");
		}
		case D_RULER+3:
		{
		    if(!response) {DeletePVar(playerid, "LicPlayer");return 1;}
		    new p = GetPVarInt(playerid, "LicPlayer");
		    if(GetPlayerMoney(playerid) < 10000)
			{
				SendClientMessage(playerid, COLOR_LIGHTRED,"[!] У Вас недостаточно средств.");
				SendClientMessage(p, COLOR_LIGHTRED,"[!] У игрока недостаточно средств.");
				DeletePVar(playerid, "LicPlayer");
				return 1;
			}
			GivePlayerMoney(playerid, -10000);
		    SendMes(playerid, COLOR_PAYCHEC, "[DL] Вы купили лицензию на воздушный транспорт у %s за 5000$", GetName(p));
		    SendMes(p, COLOR_PAYCHEC, "[DL] %s купили у Вас лицензию на воздушный транспорт за 5000$", GetName(playerid));
		    cDataInfo[playerid][pLic][2] = 1;
			DeletePVar(playerid, "LicPlayer");
		}
		case D_RULER+4:
		{
		    if(!response) {DeletePVar(playerid, "LicPlayer");return 1;}
		    new p = GetPVarInt(playerid, "LicPlayer");
		    if(GetPlayerMoney(playerid) < 5000)
			{
				SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас недостаточно средств.");
				SendClientMessage(p, COLOR_LIGHTRED, "[!] У игрока недостаточно средств.");
				DeletePVar(playerid, "LicPlayer");
				return 1;
			}
			GivePlayerMoney(playerid, -5000);
		    SendMes(playerid, COLOR_PAYCHEC, "Вы купили разрешение на ношение оружия у %s за %d$", GetName(p));
		    SendMes(p, COLOR_PAYCHEC, "%s купили у Вас разрешение на ношение оружия за %d$", GetName(playerid));
		    cDataInfo[playerid][pLic][3] = 1;
			DeletePVar(playerid, "LicPlayer");
		}
		case D_MONEYBACK:
		{
		    // BTS
			if(response)
			{
		        switch(listitem)
		        {
		            case 0..4: InDev(playerid);
		        }
			}
		}
		case D_BANK:
		{
		    switch(listitem)
		    {
		        case 0:
		        {
		            query = "";
					format(query, sizeof(query), "SELECT * FROM `bank` WHERE `playerid` = '%d'", GetPVarInt(playerid, "pID"));
					mysql_function_query(Mysql, query, true, "LoadAccountBank", "d", playerid);
		        }
		        case 1: ShowPlayerDialog(playerid, D_BANK+2, d_Input, "{6699FF}Открыть счет", "{FFFFFF}Введите название счета:", "Далее", "Назад");
		    }
		}
		case D_BANK+1:
		{
		    new text_1[64], account,text_2[64];
			if(sscanf(inputtext, "p<№>s[128]s[24]", text_1, text_2)) return true;
		    sscanf(text_2, "d", account); SetPVarInt(playerid, "AccountBank", account), SetPVarString(playerid, "AccountName", text_1);
			lines = "";
			format(lines, sizeof(lines), "{FFFFFF}Счет {81cb00}№%d{ffffff}\nНазначение: {81cb00}%s{ffffff}\nВведите PIN-Код счета:", account, text_1);
			ShowPlayerDialog(playerid, D_BANK+3, d_Input, "{6699FF}Банковский счет", lines, "Далее", "Назад");
		}
		case D_BANK+2:
		{
		    if(!response) return true;
		    new name[16];
		    if(sscanf(inputtext,"s[16]",name)) return ShowPlayerDialog(playerid, D_BANK+2, d_Input, "{6699FF}Открыть счет", "{FFFFFF}Введите название счета:", "Далее", "Назад");
			if(strlen(name) < 3 || strlen(name) > 16) return ShowPlayerDialog(playerid, D_BANK+2, d_Input, "{6699FF}Открыть счет", "{FFFFFF}Введите название счета:", "Далее", "Назад");
			query = "";
			format(query, 256, "UPDATE `bank` SET `pin` = '0000' WHERE id = '%d'", GetPVarInt(playerid,"AccountBank"));
			mysql_function_query(Mysql, query, false, "", "");
			lines = "";
			ShowPlayerDialog(playerid, 0, d_Box, "{6699FF}Счёт", "{FFFFFF}Вы создали новый счет в банке.\n\n\
			Для доступа к нему используйте PIN-код: {ff0000}0000{FFFFFF}. После входа\n\
			Настоятельно рекомендуем сменить его на более сложный.\n\
			Это поможет защитить счет от нежелательных переводов.", "Готово", "");
			lines = "";
			format(lines, 128, "INSERT INTO `bank` (playerid, name) VALUES ('%i','%s')", GetPVarInt(playerid, "pID"), name);
			mysql_function_query(Mysql, lines, false, "", "");
		}
		case D_BANK+3:
		{
		    if(!response) return Bank_Money(playerid);
		    new atext[16];
		    GetPVarString(playerid,"AccountName", atext, 16);
	     	lines = ""; format(lines, sizeof(lines), "{FFFFFF}Счет {81cb00}№%d{ffffff}\nНазначение: {81cb00}%s{ffffff}\nВведите PIN-Код счета:", GetPVarInt(playerid,"AccountBank"),atext);
			if(!strlen(inputtext) || strlen(inputtext) < 3 || strlen(inputtext) > 16) return ShowPlayerDialog(playerid, D_BANK+3, d_Input, "{6699FF}Счёт", lines, "Далее", "Выход");
			query = "";
			format(query, sizeof(query), "SELECT * FROM `bank` WHERE `id` = '%d' and `pin` = '%s' LIMIT 1;", GetPVarInt(playerid,"AccountBank"),inputtext);
			mysql_function_query(Mysql, query, true, "GetPinAccountBank", "d", playerid);
		}
		case D_BANK+4:
		{
		    if(response)
		    {
	  			switch(listitem)
			    {
			        case 0:
			        {
						query = "";
						format(query, sizeof(query), "SELECT * FROM `bank` WHERE `id` = '%d'", GetPVarInt(playerid,"AccountBank"));
						mysql_function_query(Mysql, query, true, "InfoAccountBank", "d", playerid);
			        }
			        case 1:
			        {
			            query = "";
						format(query, sizeof(query), "SELECT * FROM `bank_log` WHERE `myid` = '%d' ORDER BY id DESC LIMIT 5", GetPVarInt(playerid,"AccountBank"));
						mysql_function_query(Mysql, query, true, "LogAccountBank", "d", playerid);
			        }
			        case 2: ShowPlayerDialog(playerid, D_BANK+5, d_Input, "{6699FF}Снять деньги", "{FFFFFF}Укажите сумму:", "Снять", "Назад");
			        case 3: ShowPlayerDialog(playerid, D_BANK+6, d_Input, "{6699FF}Положить деньги", "{FFFFFF}Укажите сумму:", "Положить", "Назад");
			        case 4: ShowPlayerDialog(playerid, D_BANK+7, d_Input, "{6699FF}Перевод средств", "{FFFFFF}Укажите номер счета, на который\nхотите осуществить перевод:", "Далее", "Назад");
			        case 5: ShowPlayerDialog(playerid, D_BANK+8, d_Input, "{6699FF}Изменение PIN-кода", "{FFFFFF}Укажите новый PIN-код.\nДлина от 4 до 20 симвалов:", "Далее", "Назад");
				}
			}
		}
		case D_BANK+5:
		{
		    if(!response) { ShowPlayerDialog(playerid, D_BANK+4, d_List, "{6699FF}Банковские операции", "1. Информация о счёте\n2. История операций\n3. Снять деньги\n4. Положить деньги\n5. Перевести на другой счет\n6. Изменить PIN-код", "Выбрать", "Назад"); return true; }
			new money;
			if(sscanf(inputtext,"i",money)) return ShowPlayerDialog(playerid, D_BANK+5,DIALOG_STYLE_INPUT, "{6699FF}Снять деньги", "Укажите сумму:", "Снять", "Отмена");
			if(money < 1 || money > 1000000) return ShowPlayerDialog(playerid,D_BANK+5,DIALOG_STYLE_INPUT, "{6699FF}Снять деньги", "Укажите сумму:", "Снять", "Отмена");
            query = "";
			format(query, sizeof(query), "SELECT * FROM `bank` WHERE `id` = '%d' and `playerid` = '%d'", GetPVarInt(playerid,"AccountBank"), GetPVarInt(playerid, "pID"));
			mysql_function_query(Mysql, query, true, "GetBankMoney", "dd", playerid, money);
		}
		case D_BANK+6:
		{
            if(!response) {ShowPlayerDialog(playerid, D_BANK+4, d_List, "{6699FF}Банковские операции", "1. Информация о счете\n2. История операций\n3. Снять деньги\n4. Положить деньги\n5. Перевести на другой счет\n6. Изменить PIN-код", "Выбрать", "Назад"); return true; }
			new money;
			if(sscanf(inputtext,"i",money)) return ShowPlayerDialog(playerid, D_BANK+6,DIALOG_STYLE_INPUT, "{6699FF}Положить деньги", "Укажите сумму:", "Положить", "Отмена");
			if(money < 1 || money > 1000000) return ShowPlayerDialog(playerid, D_BANK+6,DIALOG_STYLE_INPUT, "{6699FF}Положить деньги", "Укажите сумму:", "Положить", "Отмена");
            query = "";
			format(query, sizeof(query), "SELECT * FROM `bank` WHERE `id` = '%d' and `playerid` = '%d'", GetPVarInt(playerid,"AccountBank"), GetPVarInt(playerid, "pID"));
			mysql_function_query(Mysql, query, true, "PutBankMoney", "dd", playerid, money);
		}
		case D_BANK+7:
		{
		    if(!response) { ShowPlayerDialog(playerid, D_BANK+4, d_List, "{6699FF}Банковские операции", "1. Информация о счёте\n2. История операций\n3. Снять деньги\n4. Положить деньги\n5. Перевести на другой счет\n6. Изменить PIN-код", "Выбрать", "Назад"); return true;}
            new account;
			if(sscanf(inputtext,"i",account)) return ShowPlayerDialog(playerid, D_BANK+7,DIALOG_STYLE_INPUT, "{6699FF}Перевод средств", "Укажите номер счета, на который\nхотите осуществить перевод:", "Далее", "Отмена");
			if(account < 1000 || account > 9999) return ShowPlayerDialog(playerid, D_BANK+7,DIALOG_STYLE_INPUT, "{6699FF}Перевод средств", "Укажите номер счета, на который\nхотите осуществить перевод:", "Далее", "Отмена");
            SetPVarInt(playerid, "PayAccountBank", account);
            lines = "";
			format(lines, sizeof(lines), "{ffffff}Перевод на счет:\t{f26c00}№%d{ffffff}\nВведите сумму для перевода:", account);
			ShowPlayerDialog(playerid, D_BANK+9,DIALOG_STYLE_INPUT, "{6699FF}Перевод средств", lines, "Перевести", "Назад");
		}
		case D_BANK+8:
		{
		    if(!response) { ShowPlayerDialog(playerid, D_BANK+4, d_List, "{6699FF}Банковские операции", "1. Информация о счёте\n2. История операций\n3. Снять деньги\n4. Положить деньги\n5. Перевести на другой счет\n6. Изменить PIN-код", "Выбрать", "Назад"); return true;}
		    new AtmPass[64];
			if(sscanf(inputtext,"s",AtmPass)) return ShowPlayerDialog(playerid, D_BANK+8,DIALOG_STYLE_INPUT, "{6699FF}Изменение PIN-кода", "Укажите новый PIN-код.\nДлина от 4 до 8 цифр:", "Ок", "Отмена");
			if(strlen(AtmPass) < 4 && strlen(AtmPass) > 20) return ShowPlayerDialog(playerid, D_BANK+8,DIALOG_STYLE_INPUT, "{6699FF}Изменение PIN-кода", "Укажите новый PIN-код.\nДлина от 4 до 8 цифр:", "Ок", "Отмена");
			query = "";
			format(query, 256, "UPDATE `bank` SET `pin` = '%s' WHERE id = '%d'", AtmPass, GetPVarInt(playerid,"AccountBank"));
			mysql_function_query(Mysql, query, false, "", "");
			lines = "";
			format(lines, sizeof(lines), "{FFFFFF}Счет:\t\t\t\t{F26C00}№%d\n{ffffff}Новый PIN-код:\t\t{F26C00}%s", GetPVarInt(playerid,"AccountBank"),AtmPass);
			ShowPlayerDialog(playerid, D_BANK+10,0, "{6699FF}Изменение PIN-кода", lines, "Назад", "Выход");
		}
		case D_BANK+9:
		{
		    if(!response) { ShowPlayerDialog(playerid, D_BANK+4, d_List, "{6699FF}Банковские операции", "1. Информация о счёте\n2. История операций\n3. Снять деньги\n4. Положить деньги\n5. Перевести на другой счет\n6. Изменить PIN-код", "Выбрать", "Назад"); return true;}
            new money;
            lines = "";
			format(lines, sizeof(lines), "{ffffff}Перевод на счет:\t{f26c00}№%d{ffffff}\nВведите сумму для перевода:", GetPVarInt(playerid,"PayAccountBank"));
			if(sscanf(inputtext,"i",money)) return ShowPlayerDialog(playerid, D_BANK+9,DIALOG_STYLE_INPUT, "{6699FF}Перевод средств", lines, "Перевести", "Отмена");
			if(money < 1 || money > 1000000) return ShowPlayerDialog(playerid, D_BANK+9,DIALOG_STYLE_INPUT, "{6699FF}Перевод средств", lines, "Перевести", "Отмена");
            query = "";
			format(query, sizeof(query), "SELECT * FROM `bank` WHERE `id` = '%d'", GetPVarInt(playerid,"AccountBank"));
			mysql_function_query(Mysql, query, true, "PayAccountBank", "dd", playerid,money);
		}
		case D_BANK+10:
		{
		    if(response) return ShowPlayerDialog(playerid, D_BANK+4, d_List, "{6699FF}Банковские операции", "1. Информация о счёте\n2. История операций\n3. Снять деньги\n4. Положить деньги\n5. Перевести на другой счет\n6. Изменить PIN-код", "Выбрать", "Назад");
		}
		case D_BANK+11:
		{
		    if(!response) return true;
		    if(CheckNewBank[playerid] == 1)
		    {
			    query = "";
				format(query,128,"INSERT INTO `bank` (fix,playerid,name) VALUES ('1', '%i', 'Основной счет')", GetPVarInt(playerid, "pID"));
				mysql_function_query(Mysql, query, false, "", "");
				SendClientMessage(playerid, -1,"[B] Вы открыли основной счет в банке.");
				SendClientMessage(playerid, -1,"[B] Ваш PIN-Код по умолчанию '0000'");
				CheckNewBank[playerid] = 0;
				CheckBank(playerid);
			}
			else SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас уже есть основной счет в банке.");
		}
	}
	return true;
}

stock InDev(playerid)
{
	ShowPlayerDialog(playerid, D_INDEV, d_Box, "{6699FF}Опция недоступна", "{FFFFFF}Сожалеем, но опция временно недоступна, так как находится в стадии разработки.\nИли не находится.\nСроки реализации остаются неизвестными.", "Закрыть", "");
	return true;
}

/*stock SetPlayerPosEx(playerid, Float:x, Float:y, Float:z, Float:angle = 123.7, interiorid = -1, virtualworldid = -1, status = TYPE_WITHOUT_FREEZE)
{
    //if(status != TYPE_WITHOUT_FREEZE && !gLoadTime{playerid})
    //{
   	for(new i; i < 4; i++) TextDrawShowForPlayer(playerid, load_texture[i]);
    TogglePlayerControllable(playerid, 0);
    SetTimerEx("UnfreezeLoadTexture", FREEZE_TIME, false, "iii", playerid, FREEZE_TIME, status);
    //}
    
    SetPlayerPos(playerid, x, y, z);
    if(-1 != interiorid) SetPlayerInterior(playerid, interiorid);
    if(-1 != virtualworldid) SetPlayerVirtualWorld(playerid, virtualworldid);
//    if(123.7 != angle) SetPlayerFacingAngle(playerid, angle, 0);
    return SetCameraBehindPlayer(playerid);
}
*/

// Global Position System

stock Float:PointAngle(playerid, Float:xa, Float:ya, Float:xb, Float:yb) // Don't know the owner.
{
	new Float:carangle;
	new Float:xc, Float:yc;
	new Float:angle;
	xc = floatabs(floatsub(xa,xb));
	yc = floatabs(floatsub(ya,yb));
	if (yc == 0.0 || xc == 0.0)
	{
		if(yc == 0 && xc > 0) angle = 0.0;
		else if(yc == 0 && xc < 0) angle = 180.0;
		else if(yc > 0 && xc == 0) angle = 90.0;
		else if(yc < 0 && xc == 0) angle = 270.0;
		else if(yc == 0 && xc == 0) angle = 0.0;
	}
	else
	{
		angle = atan(xc/yc);
		if(xb > xa && yb <= ya) angle += 90.0;
		else if(xb <= xa && yb < ya) angle = floatsub(90.0, angle);
		else if(xb < xa && yb >= ya) angle -= 90.0;
		else if(xb >= xa && yb > ya) angle = floatsub(270.0, angle);
	}
	GetVehicleZAngle(GetPlayerVehicleID(playerid), carangle);
	return floatadd(angle, -carangle);
}

stock LoadMySql()
{
	//mysql_set_charset("cp1251_general_ci");
	mysql_function_query(Mysql, "SET NAMES 'cp1251'", false, "", "");
	mysql_function_query(Mysql, "SELECT * FROM `"TABLE_BIZZ"` ORDER BY `"TABLE_BIZZ"`.`id` ASC", true, "LoadOrg", "");
	mysql_function_query(Mysql, "SELECT * FROM `"TABLE_ATM"`", true, "LoadATM", "");
 	mysql_function_query(Mysql, "SELECT * FROM `"TABLE_CARS"`", true, "LoadVehicle", "");
 	mysql_function_query(Mysql, "SELECT * FROM `"TABLE_ENTERS"`", true, "LoadEnters", "");
 	mysql_function_query(Mysql, "SELECT * FROM `"TABLE_HOUSE"`", true, "LoadHouse", "");
 	mysql_function_query(Mysql, "SELECT * FROM `"TABLE_FACTIONS"`", true, "LoadFactions", "");
 	mysql_function_query(Mysql, "SELECT * FROM `"TABLE_GPS"`", true, "LoadGPS", "");
	return true;
}

stock AdvertList(playerid)
{
	new str[50];
	lines = "";
	for(new i = 1; i <= TOTALADVERT;i++)
	{
		format(str, sizeof(str), "№%i - Прислал: %s\n",i, AI[i][aName]);
		strcat(lines, str);
	}
	if(TOTALADVERT == 0) return ShowPlayerDialog(playerid, 0, d_Box, "{6699FF}Объявления", "{FFFFFF}Нет объявлений для проверки.", "Выход", "");
	ShowPlayerDialog(playerid, D_SMI+5, d_List, "{6699FF}Объявления", lines, "Выбрать", "Выход");
	return true;
}

stock CreateDroppedInv(zzz1, Float:gPosX, Float:gPosY, Float:gPosZ)
{
	if(zzz1 == 0) return true;
	new f = total_vehicles_from_files+1;
	for(new a = 0; a < total_vehicles_from_files; a++)
	{
		if(dInvData[a][ObjPos][0] == 0.0)
		{
			f = a;
			break;
		}
	}
	if(f > total_vehicles_from_files) return true;
	dInvData[f][ObjData] = zzz1;
	dInvData[f][ObjPos][0] = gPosX;
	dInvData[f][ObjPos][1] = gPosY;
	dInvData[f][ObjPos][2] = gPosZ;
	new x_l = random(2);
	new y_l = random(2);
	dInvData[f][ObjID] = CreateDynamicObject(InvObjects[id], dInvData[f][ObjPos][0]+x_l, dInvData[f][ObjPos][1]+y_l, dInvData[f][ObjPos][2]-1.0, 0.0, 360.0, 250.0);
	if(zzz1 == 78) SetObjectMaterial(dInvData[f][ObjID], 0, 2060, "cj_ammo", "CJ_CANVAS2", 0);
	return true;
}

stock CreateDroppedInvWorld(zzz, Float:x, Float:y, Float:z)
{
	if(zzz == 0) return 1;
	new f = total_vehicles_from_files+1;
	for(new a = 0; a < total_vehicles_from_files; a++)
	{
		if(dInvData[a][ObjPos][0] == 0.0)
		{
			f = a;
			break;
		}
	}
	dInvData[f][ObjData] = zzz;
	dInvData[f][ObjPos][0] = x;
	dInvData[f][ObjPos][1] = y;
	dInvData[f][ObjPos][2] = z;
	dInvData[f][ObjID] = CreateDynamicObject(InvObjects[dInvData[f][ObjData]], dInvData[f][ObjPos][0]/*+x_l*/, dInvData[f][ObjPos][1]/*+y_l*/, dInvData[f][ObjPos][2], 0.0, 360.0, 300.0);
	if(zzz == 78) SetObjectMaterial(dInvData[f][ObjID], 0, 2060, "cj_ammo", "CJ_CANVAS2", 0);
	return 1;
}

stock LoadMenu()
{
	SkinMenu[0] = CreateMenu("Choose", 1, 20.0, 130.0, 200.0);
	AddMenuItem(SkinMenu[0],0,"NEXT");
	AddMenuItem(SkinMenu[0],0,"BACK");
	AddMenuItem(SkinMenu[0],0,"SPAWN");
	
	SkinMenu[1] = CreateMenu("Choose", 1, 20.0, 130.0, 200.0);
	AddMenuItem(SkinMenu[1],0,"BACK");
	AddMenuItem(SkinMenu[1],0,"NEXT");
	AddMenuItem(SkinMenu[1],0,"SPAWN");
	return true;
}

stock LoadData(playerid)
{
    Mobile[playerid] = -1;
    return true;
}

stock LoadMap()
{
    CreateGeneralItems();
    CreateElevator();
    CreateEntryExits();
    CreateDoor(-1572.9832, -2571.6791, 29.7301, 0.0000, 0.0000, -58.9000);
    CreateDoor(-1572.8398, -2574.0109, 29.7301, 0.0000, 0.0000, -148.9999);
    CreateDoor(-1572.6760, -2565.0490, 29.7301, 0.0000, 0.0000, -58.9000);
    CreateDoor(-1575.0780, -2560.1855, 29.7301, 0.0000, 0.0000, -58.9000);
    CreateDoor(-1579.1849, -2555.4265, -5.0620, 0.0000, 0.0000, -58.9000);
    CreateDoor(-1569.6497, -2571.8188, -5.0620, 0.0000, 0.0000, -58.9000);
    CreateDoor(-1576.9494, -2570.3190, -5.0620, 0.0000, 0.0000, -149.0999);
    CreateDoor(-1516.7568, -2663.1357, -5.2957, 0.0000, 0.0000, -59.6999);
    CreateDoor(-1518.4584, -2664.1682, -5.3257, 0.0000, 0.0000, 29.8000);
    CreateDoor(-1574.5665, -2697.0371, 2.9613, 0.0000, 0.0000, 29.9000);
	//WORK
	query = "";
	format(query, 128, "Мешков: {e2ba00}%d из 500",TOTALCARGO);
	CargoText[0] = Create3DTextLabel(query, -1, 2231.0959, -2285.3909, 14.3751, 8.0, 0, 0);
	//HOUSES
	CreateObject(19168, 1797.8475, -1881.6311, 15.0892,   90.00, 0.00, 0.00);
    CreateObject(19169, 1799.3453, -1881.6311, 15.0892,   90.00, 0.00, 0.00);
    CreateObject(19170, 1797.8475, -1881.6311, 13.5896,   90.00, 0.00, 0.00);
    CreateObject(19171, 1799.3472, -1881.6311, 13.5896,   90.00, 0.00, 0.00);
	//less
	for(new i; i < sizeof(Wood); i++) gWood[i] = CreateObject(616, Wood[i][0], Wood[i][1], Wood[i][2],0.0000000,0.0000000,0.0000000);

    //#tryinclude TRNQLT\Obj.inc
	#tryinclude TRNQLT\Jcts.inc
	//#tryinclude TRNQLT\Worlds.inc
	CreateDynamic3DTextLabel("{FFFF00}Приём на работу", -1, 370.2711, 178.5977, 1009.2657, 10.0);
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
	    Invite_JOB[i] = CreateDynamicCP(370.1880, 187.5764, 1008.3893, 1.0, -1, -1, i, 20.0);
	}
	//A_Shop[0] = Create3DTextLabel("{FFFFFF}Лазерные указки\nСостояние: {CC0000}Закрыто",0xFFFFFFFF, 1764.6361,-1885.7416,14.8846,25.0,0,0);
	return true;
}

stock LoadTextDraw(playerid)
{
	// Global Position System
	NAVTD[0] = TextDrawCreate(404.319183, 409.916809, "box");
	TextDrawLetterSize(NAVTD[0], 0.000000, 1.941436);
	TextDrawTextSize(NAVTD[0], 498.000000, 0.000000);
	TextDrawAlignment(NAVTD[0], 1);
	TextDrawColor(NAVTD[0], -1);
	TextDrawUseBox(NAVTD[0], 1);
	TextDrawBoxColor(NAVTD[0], 100);
	TextDrawSetShadow(NAVTD[0], 0);
	TextDrawSetOutline(NAVTD[0], 0);
	TextDrawBackgroundColor(NAVTD[0], 255);
	TextDrawFont(NAVTD[0], 1);
	TextDrawSetProportional(NAVTD[0], 1);
	TextDrawSetShadow(NAVTD[0], 0);

	NAVTD[1] = TextDrawCreate(404.787597, 399.999847, "GPS Info:");
	TextDrawLetterSize(NAVTD[1], 0.299736, 1.115833);
	TextDrawAlignment(NAVTD[1], 1);
	TextDrawColor(NAVTD[1], -5963521);
	TextDrawSetShadow(NAVTD[1], 1);
	TextDrawSetOutline(NAVTD[1], 0);
	TextDrawBackgroundColor(NAVTD[1], 255);
	TextDrawFont(NAVTD[1], 0);
	TextDrawSetProportional(NAVTD[1], 1);
	TextDrawSetShadow(NAVTD[1], 1);
	//
	RegAuth[0] = CreatePlayerTextDraw(playerid, 189.000000, 181.000000, "ld_spac:white");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[0], 0);
	PlayerTextDrawFont(playerid, RegAuth[0], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[0], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[0], 286331903);
	PlayerTextDrawSetOutline(playerid, RegAuth[0], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[0], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[0], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[0], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[0], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[0], 261.000000, 210.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[0], 0);

	RegAuth[1] = CreatePlayerTextDraw(playerid, 184.000000, 164.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[1], 0);
	PlayerTextDrawFont(playerid, RegAuth[1], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[1], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[1], 286331903);
	PlayerTextDrawSetOutline(playerid, RegAuth[1], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[1], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[1], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[1], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[1], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[1], 31.000000, 31.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[1], 0);

	RegAuth[2] = CreatePlayerTextDraw(playerid, 424.000000, 164.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[2], 0);
	PlayerTextDrawFont(playerid, RegAuth[2], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[2], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[2], 286331903);
	PlayerTextDrawSetOutline(playerid, RegAuth[2], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[2], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[2], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[2], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[2], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[2], 31.000000, 31.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[2], 0);

	RegAuth[3] = CreatePlayerTextDraw(playerid, 197.000000, 169.000000, "ld_spac:white");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[3], 0);
	PlayerTextDrawFont(playerid, RegAuth[3], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[3], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[3], 286331903);
	PlayerTextDrawSetOutline(playerid, RegAuth[3], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[3], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[3], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[3], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[3], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[3], 243.000000, 20.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[3], 0);

	RegAuth[4] = CreatePlayerTextDraw(playerid, 184.000000, 377.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[4], 0);
	PlayerTextDrawFont(playerid, RegAuth[4], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[4], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[4], 286331903);
	PlayerTextDrawSetOutline(playerid, RegAuth[4], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[4], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[4], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[4], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[4], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[4], 31.000000, 31.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[4], 0);

	RegAuth[5] = CreatePlayerTextDraw(playerid, 424.000000, 377.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[5], 0);
	PlayerTextDrawFont(playerid, RegAuth[5], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[5], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[5], 286331903);
	PlayerTextDrawSetOutline(playerid, RegAuth[5], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[5], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[5], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[5], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[5], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[5], 31.000000, 31.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[5], 0);

	RegAuth[6] = CreatePlayerTextDraw(playerid, 197.000000, 383.000000, "ld_spac:white");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[6], 0);
	PlayerTextDrawFont(playerid, RegAuth[6], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[6], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[6], 286331903);
	PlayerTextDrawSetOutline(playerid, RegAuth[6], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[6], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[6], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[6], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[6], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[6], 243.000000, 20.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[6], 0);

	RegAuth[7] = CreatePlayerTextDraw(playerid, 190.000000, 169.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[7], 0);
	PlayerTextDrawFont(playerid, RegAuth[7], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[7], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[7], -1523897601);
	PlayerTextDrawSetOutline(playerid, RegAuth[7], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[7], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[7], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[7], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[7], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[7], 21.000000, 21.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[7], 0);

	RegAuth[8] = CreatePlayerTextDraw(playerid, 191.000000, 169.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[8], 0);
	PlayerTextDrawFont(playerid, RegAuth[8], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[8], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[8], 286331903);
	PlayerTextDrawSetOutline(playerid, RegAuth[8], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[8], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[8], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[8], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[8], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[8], 21.000000, 21.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[8], 0);

	RegAuth[9] = CreatePlayerTextDraw(playerid, 429.000000, 169.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[9], 0);
	PlayerTextDrawFont(playerid, RegAuth[9], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[9], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[9], -1523897601);
	PlayerTextDrawSetOutline(playerid, RegAuth[9], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[9], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[9], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[9], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[9], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[9], 21.000000, 21.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[9], 0);

	RegAuth[10] = CreatePlayerTextDraw(playerid, 428.000000, 169.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[10], 0);
	PlayerTextDrawFont(playerid, RegAuth[10], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[10], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[10], 286331903);
	PlayerTextDrawSetOutline(playerid, RegAuth[10], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[10], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[10], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[10], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[10], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[10], 21.000000, 21.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[10], 0);

	RegAuth[11] = CreatePlayerTextDraw(playerid, 218.000000, 174.000000, "Registration");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[11], 286331903);
	PlayerTextDrawFont(playerid, RegAuth[11], 2);
	PlayerTextDrawLetterSize(playerid, RegAuth[11], 0.180000, 1.100000);
	PlayerTextDrawColor(playerid, RegAuth[11], -1);
	PlayerTextDrawSetOutline(playerid, RegAuth[11], 1);
	PlayerTextDrawSetProportional(playerid, RegAuth[11], 1);
	PlayerTextDrawSetSelectable(playerid, RegAuth[11], 0);

	RegAuth[12] = CreatePlayerTextDraw(playerid, 293.000000, 174.000000, "Choose skin");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[12], 286331903);
	PlayerTextDrawFont(playerid, RegAuth[12], 2);
	PlayerTextDrawLetterSize(playerid, RegAuth[12], 0.180000, 1.100000);
	PlayerTextDrawColor(playerid, RegAuth[12], -1);
	PlayerTextDrawSetOutline(playerid, RegAuth[12], 1);
	PlayerTextDrawSetProportional(playerid, RegAuth[12], 1);
	PlayerTextDrawSetSelectable(playerid, RegAuth[12], 0);

	RegAuth[13] = CreatePlayerTextDraw(playerid, 364.000000, 174.000000, "Authorization");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[13], 286331903);
	PlayerTextDrawFont(playerid, RegAuth[13], 2);
	PlayerTextDrawLetterSize(playerid, RegAuth[13], 0.180000, 1.100000);
	PlayerTextDrawColor(playerid, RegAuth[13], -1);
	PlayerTextDrawSetOutline(playerid, RegAuth[13], 1);
	PlayerTextDrawSetProportional(playerid, RegAuth[13], 1);
	PlayerTextDrawSetSelectable(playerid, RegAuth[13], 0);

	RegAuth[15] = CreatePlayerTextDraw(playerid, 205.000000, 184.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[15], 0);
	PlayerTextDrawFont(playerid, RegAuth[15], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[15], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[15], -1523897601);
	PlayerTextDrawSetOutline(playerid, RegAuth[15], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[15], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[15], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[15], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[15], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[15], 80.000000, 1.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[15], 0);

	RegAuth[16] = CreatePlayerTextDraw(playerid, 294.000000, 196.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[16], 0);
	PlayerTextDrawFont(playerid, RegAuth[16], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[16], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[16], -1523897601);
	PlayerTextDrawSetOutline(playerid, RegAuth[16], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[16], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[16], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[16], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[16], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[16], 50.000000, 50.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[16], 0);

	RegAuth[17] = CreatePlayerTextDraw(playerid, 296.000000, 196.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[17], 0);
	PlayerTextDrawFont(playerid, RegAuth[17], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[17], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[17], 286331903);
	PlayerTextDrawSetOutline(playerid, RegAuth[17], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[17], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[17], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[17], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[17], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[17], 50.000000, 50.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[17], 0);

	RegAuth[18] = CreatePlayerTextDraw(playerid, 300.000000, 200.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[18], 0);
	PlayerTextDrawFont(playerid, RegAuth[18], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[18], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[18], -1523897601);
	PlayerTextDrawSetOutline(playerid, RegAuth[18], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[18], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[18], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[18], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[18], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[18], 42.000000, 42.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[18], 0);

	RegAuth[19] = CreatePlayerTextDraw(playerid, 298.000000, 200.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[19], 0);
	PlayerTextDrawFont(playerid, RegAuth[19], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[19], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[19], 286331903);
	PlayerTextDrawSetOutline(playerid, RegAuth[19], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[19], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[19], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[19], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[19], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[19], 42.000000, 42.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[19], 0);

	RegAuth[20] = CreatePlayerTextDraw(playerid, 313.000000, 205.000000, "T");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[20], -1523897601);
	PlayerTextDrawFont(playerid, RegAuth[20], 2);
	PlayerTextDrawLetterSize(playerid, RegAuth[20], 0.510000, 3.000000);
	PlayerTextDrawColor(playerid, RegAuth[20], -1378294017);
	PlayerTextDrawSetOutline(playerid, RegAuth[20], 1);
	PlayerTextDrawSetProportional(playerid, RegAuth[20], 1);
	PlayerTextDrawSetSelectable(playerid, RegAuth[20], 0);

	RegAuth[21] = CreatePlayerTextDraw(playerid, 343.000000, 334.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[21], 0);
	PlayerTextDrawFont(playerid, RegAuth[21], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[21], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[21], -1523897601);
	PlayerTextDrawSetOutline(playerid, RegAuth[21], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[21], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[21], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[21], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[21], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[21], 31.000000, 30.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[21], 0);

	RegAuth[22] = CreatePlayerTextDraw(playerid, 261.000000, 244.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[22], 0);
	PlayerTextDrawFont(playerid, RegAuth[22], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[22], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[22], -1523897601);
	PlayerTextDrawSetOutline(playerid, RegAuth[22], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[22], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[22], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[22], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[22], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[22], 31.000000, 30.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[22], 0);

	RegAuth[23] = CreatePlayerTextDraw(playerid, 277.000000, 249.000000, "ld_spac:white");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[23], 0);
	PlayerTextDrawFont(playerid, RegAuth[23], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[23], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[23], -1523897601);
	PlayerTextDrawSetOutline(playerid, RegAuth[23], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[23], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[23], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[23], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[23], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[23], 83.000000, 20.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[23], 0);

	RegAuth[24] = CreatePlayerTextDraw(playerid, 343.000000, 244.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[24], 0);
	PlayerTextDrawFont(playerid, RegAuth[24], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[24], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[24], -1523897601);
	PlayerTextDrawSetOutline(playerid, RegAuth[24], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[24], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[24], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[24], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[24], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[24], 31.000000, 30.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[24], 0);

	RegAuth[25] = CreatePlayerTextDraw(playerid, 343.000000, 274.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[25], 0);
	PlayerTextDrawFont(playerid, RegAuth[25], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[25], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[25], -1523897601);
	PlayerTextDrawSetOutline(playerid, RegAuth[25], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[25], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[25], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[25], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[25], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[25], 31.000000, 30.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[25], 0);

	RegAuth[26] = CreatePlayerTextDraw(playerid, 277.000000, 279.000000, "ld_spac:white");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[26], 0);
	PlayerTextDrawFont(playerid, RegAuth[26], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[26], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[26], -1523897601);
	PlayerTextDrawSetOutline(playerid, RegAuth[26], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[26], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[26], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[26], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[26], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[26], 83.000000, 20.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[26], 0);

	RegAuth[27] = CreatePlayerTextDraw(playerid, 261.000000, 274.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[27], 0);
	PlayerTextDrawFont(playerid, RegAuth[27], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[27], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[27], -1523897601);
	PlayerTextDrawSetOutline(playerid, RegAuth[27], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[27], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[27], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[27], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[27], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[27], 31.000000, 30.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[27], 0);

	RegAuth[28] = CreatePlayerTextDraw(playerid, 261.000000, 304.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[28], 0);
	PlayerTextDrawFont(playerid, RegAuth[28], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[28], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[28], -1523897601);
	PlayerTextDrawSetOutline(playerid, RegAuth[28], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[28], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[28], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[28], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[28], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[28], 31.000000, 30.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[28], 0);

	RegAuth[29] = CreatePlayerTextDraw(playerid, 277.000000, 309.000000, "ld_spac:white");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[29], 0);
	PlayerTextDrawFont(playerid, RegAuth[29], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[29], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[29], -1523897601);
	PlayerTextDrawSetOutline(playerid, RegAuth[29], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[29], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[29], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[29], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[29], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[29], 83.000000, 20.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[29], 0);

	RegAuth[30] = CreatePlayerTextDraw(playerid, 343.000000, 304.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[30], 0);
	PlayerTextDrawFont(playerid, RegAuth[30], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[30], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[30], -1523897601);
	PlayerTextDrawSetOutline(playerid, RegAuth[30], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[30], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[30], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[30], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[30], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[30], 31.000000, 30.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[30], 0);

	RegAuth[31] = CreatePlayerTextDraw(playerid, 277.000000, 339.000000, "ld_spac:white");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[31], 0);
	PlayerTextDrawFont(playerid, RegAuth[31], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[31], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[31], -1523897601);
	PlayerTextDrawSetOutline(playerid, RegAuth[31], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[31], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[31], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[31], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[31], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[31], 83.000000, 20.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[31], 0);

	RegAuth[32] = CreatePlayerTextDraw(playerid, 261.000000, 334.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[32], 0);
	PlayerTextDrawFont(playerid, RegAuth[32], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[32], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[32], -1523897601);
	PlayerTextDrawSetOutline(playerid, RegAuth[32], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[32], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[32], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[32], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[32], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[32], 31.000000, 30.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[32], 0);

	RegAuth[33] = CreatePlayerTextDraw(playerid, 281.000000, 364.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[33], 0);
	PlayerTextDrawFont(playerid, RegAuth[33], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[33], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[33], -1523897601);
	PlayerTextDrawSetOutline(playerid, RegAuth[33], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[33], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[33], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[33], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[33], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[33], 31.000000, 30.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[33], 0);

	RegAuth[34] = CreatePlayerTextDraw(playerid, 323.000000, 364.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[34], 0);
	PlayerTextDrawFont(playerid, RegAuth[34], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[34], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[34], -1523897601);
	PlayerTextDrawSetOutline(playerid, RegAuth[34], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[34], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[34], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[34], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[34], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[34], 31.000000, 30.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[34], 0);

	RegAuth[35] = CreatePlayerTextDraw(playerid, 297.000000, 369.000000, "ld_spac:white");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[35], 0);
	PlayerTextDrawFont(playerid, RegAuth[35], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[35], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[35], -1523897601);
	PlayerTextDrawSetOutline(playerid, RegAuth[35], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[35], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[35], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[35], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[35], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[35], 43.000000, 20.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[35], 0);

	RegAuth[36] = CreatePlayerTextDraw(playerid, 320.000000, 254.000000, "Password");
	PlayerTextDrawTextSize(playerid, RegAuth[36], 300.000000, 2);
	PlayerTextDrawAlignment(playerid, RegAuth[36], 2);
	PlayerTextDrawBackgroundColor(playerid, RegAuth[36], 286331903);
	PlayerTextDrawFont(playerid, RegAuth[36], 2);
	PlayerTextDrawLetterSize(playerid, RegAuth[36], 0.180000, 1.100000);
	PlayerTextDrawColor(playerid, RegAuth[36], -1);
	PlayerTextDrawSetOutline(playerid, RegAuth[36], 1);
	PlayerTextDrawSetProportional(playerid, RegAuth[36], 1);
	PlayerTextDrawSetSelectable(playerid, RegAuth[36], 1);

	RegAuth[37] = CreatePlayerTextDraw(playerid, 320.000000, 283.000000, "E-mail");
	PlayerTextDrawTextSize(playerid, RegAuth[37], 300.000000, 2);
	PlayerTextDrawAlignment(playerid, RegAuth[37], 2);
	PlayerTextDrawBackgroundColor(playerid, RegAuth[37], 286331903);
	PlayerTextDrawFont(playerid, RegAuth[37], 2);
	PlayerTextDrawLetterSize(playerid, RegAuth[37], 0.180000, 1.100000);
	PlayerTextDrawColor(playerid, RegAuth[37], -1);
	PlayerTextDrawSetOutline(playerid, RegAuth[37], 1);
	PlayerTextDrawSetProportional(playerid, RegAuth[37], 1);
	PlayerTextDrawSetSelectable(playerid, RegAuth[37], 1);

	RegAuth[38] = CreatePlayerTextDraw(playerid, 320.000000, 313.000000, "Sex");
	PlayerTextDrawTextSize(playerid, RegAuth[38], 300.000000, 2);
	PlayerTextDrawAlignment(playerid, RegAuth[38], 2);
	PlayerTextDrawBackgroundColor(playerid, RegAuth[38], 286331903);
	PlayerTextDrawFont(playerid, RegAuth[38], 2);
	PlayerTextDrawLetterSize(playerid, RegAuth[38], 0.180000, 1.100000);
	PlayerTextDrawColor(playerid, RegAuth[38], -1);
	PlayerTextDrawSetOutline(playerid, RegAuth[38], 1);
	PlayerTextDrawSetProportional(playerid, RegAuth[38], 1);
	PlayerTextDrawSetSelectable(playerid, RegAuth[38], 1);

	RegAuth[39] = CreatePlayerTextDraw(playerid, 320.000000, 343.000000, "Age");
	PlayerTextDrawTextSize(playerid, RegAuth[39], 300.000000, 2);
	PlayerTextDrawAlignment(playerid, RegAuth[39], 2);
	PlayerTextDrawBackgroundColor(playerid, RegAuth[39], 286331903);
	PlayerTextDrawFont(playerid, RegAuth[39], 2);
	PlayerTextDrawLetterSize(playerid, RegAuth[39], 0.180000, 1.100000);
	PlayerTextDrawColor(playerid, RegAuth[39], -1);
	PlayerTextDrawSetOutline(playerid, RegAuth[39], 1);
	PlayerTextDrawSetProportional(playerid, RegAuth[39], 1);
	PlayerTextDrawSetSelectable(playerid, RegAuth[39], 1);

	RegAuth[40] = CreatePlayerTextDraw(playerid, 319.000000, 373.000000, "OK");
	PlayerTextDrawTextSize(playerid, RegAuth[40], 300.000000, 2);
	PlayerTextDrawAlignment(playerid, RegAuth[40], 2);
	PlayerTextDrawBackgroundColor(playerid, RegAuth[40], 286331903);
	PlayerTextDrawFont(playerid, RegAuth[40], 2);
	PlayerTextDrawLetterSize(playerid, RegAuth[40], 0.180000, 1.100000);
	PlayerTextDrawColor(playerid, RegAuth[40], -1);
	PlayerTextDrawSetOutline(playerid, RegAuth[40], 1);
	PlayerTextDrawSetProportional(playerid, RegAuth[40], 1);
	PlayerTextDrawSetSelectable(playerid, RegAuth[40], 1);

	RegAuth[41] = CreatePlayerTextDraw(playerid, 247.000000, 248.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[41], 0);
	PlayerTextDrawFont(playerid, RegAuth[41], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[41], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[41], -1523897601);
	PlayerTextDrawSetOutline(playerid, RegAuth[41], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[41], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[41], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[41], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[41], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[41], 22.000000, 22.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[41], 0);

	RegAuth[42] = CreatePlayerTextDraw(playerid, 248.000000, 248.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[42], 0);
	PlayerTextDrawFont(playerid, RegAuth[42], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[42], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[42], 286331903);
	PlayerTextDrawSetOutline(playerid, RegAuth[42], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[42], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[42], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[42], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[42], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[42], 22.000000, 22.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[42], 0);

	RegAuth[43] = CreatePlayerTextDraw(playerid, 247.000000, 278.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[43], 0);
	PlayerTextDrawFont(playerid, RegAuth[43], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[43], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[43], -1523897601);
	PlayerTextDrawSetOutline(playerid, RegAuth[43], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[43], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[43], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[43], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[43], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[43], 22.000000, 22.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[43], 0);

	RegAuth[44] = CreatePlayerTextDraw(playerid, 248.000000, 278.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[44], 0);
	PlayerTextDrawFont(playerid, RegAuth[44], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[44], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[44], 286331903);
	PlayerTextDrawSetOutline(playerid, RegAuth[44], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[44], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[44], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[44], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[44], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[44], 22.000000, 22.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[44], 0);

	RegAuth[45] = CreatePlayerTextDraw(playerid, 247.000000, 308.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[45], 0);
	PlayerTextDrawFont(playerid, RegAuth[45], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[45], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[45], -1523897601);
	PlayerTextDrawSetOutline(playerid, RegAuth[45], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[45], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[45], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[45], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[45], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[45], 22.000000, 22.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[45], 0);

	RegAuth[46] = CreatePlayerTextDraw(playerid, 247.000000, 338.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[46], 0);
	PlayerTextDrawFont(playerid, RegAuth[46], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[46], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[46], -1523897601);
	PlayerTextDrawSetOutline(playerid, RegAuth[46], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[46], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[46], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[46], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[46], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[46], 22.000000, 22.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[46], 0);

	RegAuth[47] = CreatePlayerTextDraw(playerid, 248.000000, 308.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[47], 0);
	PlayerTextDrawFont(playerid, RegAuth[47], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[47], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[47], 286331903);
	PlayerTextDrawSetOutline(playerid, RegAuth[47], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[47], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[47], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[47], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[47], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[47], 22.000000, 22.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[47], 0);

	RegAuth[48] = CreatePlayerTextDraw(playerid, 248.000000, 338.000000, "ld_beat:chit");
	PlayerTextDrawBackgroundColor(playerid, RegAuth[48], 0);
	PlayerTextDrawFont(playerid, RegAuth[48], 4);
	PlayerTextDrawLetterSize(playerid, RegAuth[48], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, RegAuth[48], 286331903);
	PlayerTextDrawSetOutline(playerid, RegAuth[48], 0);
	PlayerTextDrawSetProportional(playerid, RegAuth[48], 1);
	PlayerTextDrawSetShadow(playerid, RegAuth[48], 1);
	PlayerTextDrawUseBox(playerid, RegAuth[48], 1);
	PlayerTextDrawBoxColor(playerid, RegAuth[48], 255);
	PlayerTextDrawTextSize(playerid, RegAuth[48], 22.000000, 22.000000);
	PlayerTextDrawSetSelectable(playerid, RegAuth[48], 0);

	RegAuth[49] = CreatePlayerTextDraw(playerid, 258.000000, 253.000000, "1");
	PlayerTextDrawAlignment(playerid, RegAuth[49], 2);
	PlayerTextDrawBackgroundColor(playerid, RegAuth[49], 286331903);
	PlayerTextDrawFont(playerid, RegAuth[49], 2);
	PlayerTextDrawLetterSize(playerid, RegAuth[49], 0.180000, 1.100000);
	PlayerTextDrawColor(playerid, RegAuth[49], -1);
	PlayerTextDrawSetOutline(playerid, RegAuth[49], 1);
	PlayerTextDrawSetProportional(playerid, RegAuth[49], 1);
	PlayerTextDrawSetSelectable(playerid, RegAuth[49], 0);

	RegAuth[50] = CreatePlayerTextDraw(playerid, 258.000000, 283.000000, "2");
	PlayerTextDrawAlignment(playerid, RegAuth[50], 2);
	PlayerTextDrawBackgroundColor(playerid, RegAuth[50], 286331903);
	PlayerTextDrawFont(playerid, RegAuth[50], 2);
	PlayerTextDrawLetterSize(playerid, RegAuth[50], 0.180000, 1.100000);
	PlayerTextDrawColor(playerid, RegAuth[50], -1);
	PlayerTextDrawSetOutline(playerid, RegAuth[50], 1);
	PlayerTextDrawSetProportional(playerid, RegAuth[50], 1);
	PlayerTextDrawSetSelectable(playerid, RegAuth[50], 0);

	RegAuth[51] = CreatePlayerTextDraw(playerid, 258.000000, 313.000000, "3");
	PlayerTextDrawAlignment(playerid, RegAuth[51], 2);
	PlayerTextDrawBackgroundColor(playerid, RegAuth[51], 286331903);
	PlayerTextDrawFont(playerid, RegAuth[51], 2);
	PlayerTextDrawLetterSize(playerid, RegAuth[51], 0.180000, 1.100000);
	PlayerTextDrawColor(playerid, RegAuth[51], -1);
	PlayerTextDrawSetOutline(playerid, RegAuth[51], 1);
	PlayerTextDrawSetProportional(playerid, RegAuth[51], 1);
	PlayerTextDrawSetSelectable(playerid, RegAuth[51], 0);

	RegAuth[52] = CreatePlayerTextDraw(playerid, 258.000000, 343.000000, "4");
	PlayerTextDrawAlignment(playerid, RegAuth[52], 2);
	PlayerTextDrawBackgroundColor(playerid, RegAuth[52], 286331903);
	PlayerTextDrawFont(playerid, RegAuth[52], 2);
	PlayerTextDrawLetterSize(playerid, RegAuth[52], 0.180000, 1.100000);
	PlayerTextDrawColor(playerid, RegAuth[52], -1);
	PlayerTextDrawSetOutline(playerid, RegAuth[52], 1);
	PlayerTextDrawSetProportional(playerid, RegAuth[52], 1);
	PlayerTextDrawSetSelectable(playerid, RegAuth[52], 0);
	//cargo
	AmountDraw[playerid] = TextDrawCreate(500.5, 190.0, "_");
 	TextDrawBackgroundColor(AmountDraw[playerid], COLOR_BLACK);
 	TextDrawLetterSize(AmountDraw[playerid],0.200000,1.000000);
 	TextDrawFont(AmountDraw[playerid], 2);
 	TextDrawColor(AmountDraw[playerid], COLOR_BLUE);
 	TextDrawSetOutline(AmountDraw[playerid], 1);
 	TextDrawSetProportional(AmountDraw[playerid],1);
 	TextDrawSetShadow(AmountDraw[playerid],1);
	//less
	ProcentDraw[playerid] = TextDrawCreate(500.5, 190.0, "_");
 	TextDrawBackgroundColor(ProcentDraw[playerid], COLOR_BLACK);
 	TextDrawLetterSize(ProcentDraw[playerid],0.200000,1.000000);
 	TextDrawFont(ProcentDraw[playerid], 2);
 	TextDrawColor(ProcentDraw[playerid], COLOR_BLUE);
 	TextDrawSetOutline(ProcentDraw[playerid], 1);
 	TextDrawSetProportional(ProcentDraw[playerid],1);
 	TextDrawSetShadow(ProcentDraw[playerid],1);

 	AmountLDraw[playerid] = TextDrawCreate(500.5, 200.0, "_");
 	TextDrawBackgroundColor(AmountLDraw[playerid], COLOR_BLACK);
 	TextDrawLetterSize(AmountLDraw[playerid],0.200000,1.000000);
 	TextDrawFont(AmountLDraw[playerid], 2);
 	TextDrawColor(AmountLDraw[playerid], COLOR_BLUE);
 	TextDrawSetOutline(AmountLDraw[playerid], 1);
 	TextDrawSetProportional(AmountLDraw[playerid],1);
 	TextDrawSetShadow(AmountLDraw[playerid],1);

	Speed[playerid][0] = TextDrawCreate(573.000000, 358.000000, "IIIIIIIIIIIIIII");
	TextDrawBackgroundColor(Speed[playerid][0], -1);
	TextDrawLetterSize(Speed[playerid][0], 0.419999, 1.600000);
	TextDrawColor(Speed[playerid][0], 0xFFFFFF33);
	TextDrawSetShadow(Speed[playerid][0], 0);

	Speed[playerid][1] = TextDrawCreate(570.000000, 362.000000, "_");
	TextDrawAlignment(Speed[playerid][1], 2);
	TextDrawBackgroundColor(Speed[playerid][1], 255);
	TextDrawLetterSize(Speed[playerid][1], 0.419999, 1.000000);
	TextDrawColor(Speed[playerid][1], -1);
	TextDrawSetShadow(Speed[playerid][1], 0);
	TextDrawUseBox(Speed[playerid][1], 1);
	TextDrawBoxColor(Speed[playerid][1], COLOR_BOX);
	TextDrawTextSize(Speed[playerid][1], 0.000000, -124.000000);

	Speed[playerid][2] = TextDrawCreate(530.000000, 359.000000, "SPEED:");
	TextDrawAlignment(Speed[playerid][2], 2);
	TextDrawBackgroundColor(Speed[playerid][2], 255);
	TextDrawLetterSize(Speed[playerid][2], 0.270000, 1.399999);
	TextDrawColor(Speed[playerid][2], -1);
	TextDrawSetShadow(Speed[playerid][2], 1);

	Speed[playerid][3] = TextDrawCreate(570.000000, 375.000000, "_");
	TextDrawAlignment(Speed[playerid][3], 2);
	TextDrawBackgroundColor(Speed[playerid][3], 255);
	TextDrawLetterSize(Speed[playerid][3], 0.419999, 1.000000);
	TextDrawColor(Speed[playerid][3], -1);
	TextDrawSetShadow(Speed[playerid][3], 0);
	TextDrawUseBox(Speed[playerid][3], 1);
	TextDrawBoxColor(Speed[playerid][3], COLOR_BOX);
	TextDrawTextSize(Speed[playerid][3], 0.000000, -124.000000);

	Speed[playerid][4] = TextDrawCreate(550.000000, 372.000000, " ");
	TextDrawBackgroundColor(Speed[playerid][4], 255);
	TextDrawLetterSize(Speed[playerid][4], 0.270000, 1.399999);
	TextDrawColor(Speed[playerid][4], -1);
	TextDrawSetShadow(Speed[playerid][4], 1);

	Speed[playerid][5] = TextDrawCreate(570.000000, 388.000000, "_");
	TextDrawAlignment(Speed[playerid][5], 2);
	TextDrawBackgroundColor(Speed[playerid][5], 255);
	TextDrawLetterSize(Speed[playerid][5], 0.419999, 1.000000);
	TextDrawColor(Speed[playerid][5], -1);
	TextDrawSetShadow(Speed[playerid][5], 0);
	TextDrawUseBox(Speed[playerid][5], 1);
	TextDrawBoxColor(Speed[playerid][5], COLOR_BOX);
	TextDrawTextSize(Speed[playerid][5], 0.000000, -124.000000);

	Speed[playerid][6] = TextDrawCreate(573.000000, 371.000000, "IIIIIIIIIIIIIII");
	TextDrawBackgroundColor(Speed[playerid][6], -1);
	TextDrawLetterSize(Speed[playerid][6], 0.419999, 1.600000);
	TextDrawColor(Speed[playerid][6], 0xFFFFFF33);
	TextDrawSetShadow(Speed[playerid][6], 0);

	Speed[playerid][7] = TextDrawCreate(527.000000, 372.000000, "FUEL:");
	TextDrawAlignment(Speed[playerid][7], 2);
	TextDrawBackgroundColor(Speed[playerid][7], 255);
	TextDrawLetterSize(Speed[playerid][7], 0.270000, 1.399999);
	TextDrawColor(Speed[playerid][7], -1);
	TextDrawSetShadow(Speed[playerid][7], 1);

	Speed[playerid][8] = TextDrawCreate(550.000000, 359.000000, " ");
	TextDrawBackgroundColor(Speed[playerid][8], 255);
	TextDrawLetterSize(Speed[playerid][8], 0.270000, 1.399999);
	TextDrawColor(Speed[playerid][8], -1);
	TextDrawSetShadow(Speed[playerid][8], 1);

	Speed[playerid][9] = TextDrawCreate(570.000000, 401.000000, "_");
	TextDrawAlignment(Speed[playerid][9], 2);
	TextDrawBackgroundColor(Speed[playerid][9], 255);
	TextDrawLetterSize(Speed[playerid][9], 0.419999, 1.000000);
	TextDrawColor(Speed[playerid][9], -1);
	TextDrawSetShadow(Speed[playerid][9], 0);
	TextDrawUseBox(Speed[playerid][9], 1);
	TextDrawBoxColor(Speed[playerid][9], COLOR_BOX);
	TextDrawTextSize(Speed[playerid][9], 0.000000, -124.000000);

	Speed[playerid][10] = TextDrawCreate(536.000000, 385.000000, "MILEAGE:");
	TextDrawAlignment(Speed[playerid][10], 2);
	TextDrawBackgroundColor(Speed[playerid][10], 255);
	TextDrawLetterSize(Speed[playerid][10], 0.270000, 1.399999);
	TextDrawColor(Speed[playerid][10], -1);
	TextDrawSetShadow(Speed[playerid][10], 1);

	Speed[playerid][11] = TextDrawCreate(563.000000, 385.000000, " ");
	TextDrawBackgroundColor(Speed[playerid][11], 255);
	TextDrawLetterSize(Speed[playerid][11], 0.270000, 1.399999);
	TextDrawColor(Speed[playerid][11], -1);
	TextDrawSetShadow(Speed[playerid][11], 1);

	Speed[playerid][12] = TextDrawCreate(513.000000, 398.000000, "E");
	TextDrawBackgroundColor(Speed[playerid][12], 255);
	TextDrawLetterSize(Speed[playerid][12], 0.270000, 1.399999);
	TextDrawColor(Speed[playerid][12], -205);
	TextDrawSetShadow(Speed[playerid][12], 0);

	Speed[playerid][13] = TextDrawCreate(524.000000, 398.000000, "L");
	TextDrawBackgroundColor(Speed[playerid][13], 255);
	TextDrawLetterSize(Speed[playerid][13], 0.270000, 1.399999);
	TextDrawColor(Speed[playerid][13], -205);
	TextDrawSetShadow(Speed[playerid][13], 0);

	Speed[playerid][14] = TextDrawCreate(534.000000, 398.000000, "B");
	TextDrawBackgroundColor(Speed[playerid][14], 255);
	TextDrawLetterSize(Speed[playerid][14], 0.270000, 1.399999);
	TextDrawColor(Speed[playerid][14], -205);
	TextDrawSetShadow(Speed[playerid][14], 0);

	Speed[playerid][15] = TextDrawCreate(546.000000, 398.000000, "O");
	TextDrawBackgroundColor(Speed[playerid][15], 255);
	TextDrawLetterSize(Speed[playerid][15], 0.270000, 1.399999);
	TextDrawColor(Speed[playerid][15], -205);
	TextDrawSetShadow(Speed[playerid][15], 0);

	Speed[playerid][16] = TextDrawCreate(573.000000, 358.000000, " ");
	TextDrawBackgroundColor(Speed[playerid][16], 0x00000033);
	TextDrawLetterSize(Speed[playerid][16], 0.419999, 1.600000);
	TextDrawColor(Speed[playerid][16], -1);
	TextDrawSetShadow(Speed[playerid][16], 0);

	Speed[playerid][17] = TextDrawCreate(573.000000, 371.000000, " ");
	TextDrawBackgroundColor(Speed[playerid][17], 0x00000033);
	TextDrawLetterSize(Speed[playerid][17], 0.419999, 1.600000);
	TextDrawColor(Speed[playerid][17], -1);
	TextDrawSetShadow(Speed[playerid][17], 0);

	Speed[playerid][18] = TextDrawCreate(513.000000, 398.000000, " ");
	TextDrawBackgroundColor(Speed[playerid][18], 0x00000033);
	TextDrawLetterSize(Speed[playerid][18], 0.270000, 1.399999);
	TextDrawColor(Speed[playerid][18], -1);
	TextDrawSetShadow(Speed[playerid][18], 0);

	Speed[playerid][19] = TextDrawCreate(524.000000, 398.000000, " ");
	TextDrawBackgroundColor(Speed[playerid][19], 0x00000033);
	TextDrawLetterSize(Speed[playerid][19], 0.270000, 1.399999);
	TextDrawColor(Speed[playerid][19], -1);
	TextDrawSetShadow(Speed[playerid][19], 0);

	Speed[playerid][20] = TextDrawCreate(534.000000, 398.000000, " ");
	TextDrawBackgroundColor(Speed[playerid][20], 0x00000033);
	TextDrawLetterSize(Speed[playerid][20], 0.270000, 1.399999);
	TextDrawColor(Speed[playerid][20], -1);
	TextDrawSetShadow(Speed[playerid][20], 0);

	Speed[playerid][21] = TextDrawCreate(546.000000, 398.000000, " ");
	TextDrawBackgroundColor(Speed[playerid][21], 0x00000033);
	TextDrawLetterSize(Speed[playerid][21], 0.270000, 1.399999);
	TextDrawColor(Speed[playerid][21], -1);
	TextDrawSetShadow(Speed[playerid][21], 0);

	for(new i; i < 22; ++i)
	{
		TextDrawFont(Speed[playerid][i], 2);
		TextDrawSetOutline(Speed[playerid][i], 0);
		TextDrawSetProportional(Speed[playerid][i], 1);
	}
}

stock GetFreeSeat(vehicleid)
{
	if(!vehicleid) return -1;
	new model = GetVehicleModel(vehicleid);
	new maxs = GetMaxSeat(model) - 1;
	new bool:seat[3], cnt;
	for(new i; i < MAX_PLAYERS; i++)
	{
	    if(!IsPlayerConnected(i) || GetPlayerVehicleID(i) != vehicleid) continue;
		new pseat = GetPlayerVehicleSeat(i);
		if(pseat < 1 || pseat > 3) continue;
		seat[pseat-1] = true;
		cnt++;
		if(cnt >= maxs) return -1;
	}
	for(new i; i < 3; i++) if(!seat[i]) return i+1;
	return -1;
}

stock GetMaxSeat(modelid)
{
	switch(modelid)
	{
	    case 596..598,427,490: return 4;
	    case 599,497,528: return 2;
	}
	return -1;
}

stock PutPlayerInVehicleEx(playerid, vehicleid, passenger)
{
	PutPlayerInVehicle(playerid, vehicleid, passenger);
 	SetTimerEx("AntiNopPutPlayerInVehicle" , 1000, false, "i", playerid);
}

stock LoadAccount(playerid)
{
	mysql_format(Mysql, query, sizeof(query),"SELECT * FROM `"TABLE_ACCOUNT"` WHERE name = '%e'  LIMIT 1", GetName(playerid));
    return mysql_function_query(Mysql, query, true, "LoadAcc", "i", playerid);
}

stock Stats(playerid)
{
	new v_type[64];
	switch(GetPVarInt(playerid, "pTicket"))
	{
		case 0: v_type = "-";
		case 1: v_type = "Отслужил";
	}
	format(lines, sizeof(lines),
	"{FFFFFF}___________________________________________________________\n\n\
	Ник:\t\t\t\t\t%s\n\
	Возраст:\t\t\t\t%i\n\
	В штате:\t\t\t\t%iг / %iм\n\
	Национальность:\t\t\t%s\n\n\
	\
	Арестов:\t\t\t\t0\n\
	Судимость:\t\t\t\t0\n\
	Номер телефона:\t\t\t%i\n\n\
	\
	Работа / должность:\t\t\t%s\n\
	Организация:\t\t\t\t%s\n\
	Военный билет:\t\t\t%s\n\n\
	\
	Пол:\t\t\t\t\t%s\n\
	Регистрация:\t\t\t\t%s\n\
	___________________________________________________________",
	GetName(playerid), GetPVarInt(playerid, "pAge"), GetPVarInt(playerid, "pLevel"), GetPVarInt(playerid, "pExp"), cDataInfo[playerid][pNation], GetPVarInt(playerid, "pPhone"), Ranks_Type(playerid), Fractions_Type(playerid), v_type, (GetPVarInt(playerid, "pSex")) ? ("Мужчина") : ("Женщина"), cDataInfo[playerid][pRegData]);
	return ShowPlayerDialog(playerid,D_STATS,d_Box,"{6699FF}Статистика",lines,"Назад","Выход");
}

stock Passport(playerid)
{
    new v_type[64];
	switch(GetPVarInt(playerid, "pTicket"))
	{
		case 0: v_type = "-";
		case 1: v_type = "Отслужил";
	}
	format(lines, sizeof(lines),
	"{FFFFFF}___________________________________________________________\n\n\
	Имя:\t\t\t\t\t%s\n\
	Возраст:\t\t\t\t%i\n\
	В штате:\t\t\t\t%iг / %iм \n\
	Национальность:\t\t\t%s\n\n\
	\
	Арестов:\t\t\t\t0\n\
	Судимость:\t\t\t\t0\n\
	Номер телефона:\t\t\t%i\n\n\
	\
	Работа / должность\t\t\t%s\n\
	Организация:\t\t\t\t%s\n\
	Военный билет:\t\t\t%s\n\n\
	\
	Пол:\t\t\t\t\t%s\n\
	___________________________________________________________",
	GetName(playerid), GetPVarInt(playerid, "pAge"), GetPVarInt(playerid, "pLevel"), GetPVarInt(playerid, "pExp"), cDataInfo[playerid][pNation], GetPVarInt(playerid, "pPhone"), Ranks_Type(playerid), Fractions_Type(playerid), v_type, (GetPVarInt(playerid, "pSex")) ? ("Мужчина") : ("Женщина"));
	return ShowPlayerDialog(playerid,D_STATS+1,d_Box,"{6699FF}Паспорт",lines,"Выход","Выход");
}

stock MiniMap_SecondaryATM()
{
	for(new i = 1; i <= TOTALATM; i++)
	{
	    new Float:natmx, Float:natmy, Float:natmz;
	    GetMiniMapCoord(ATMInfo[i][aX], ATMInfo[i][aY], natmx, natmy, natmz);
	    CreateObject(19177, natmx, natmy, natmz, 90.00, 0, 0.0);
	}
}

stock MiniMap_DoubleHome()
{
	for(new i = 1; i <= TOTALHOUSE; i++)
	{
	    new idx = GetPVarInt(i, "PlayerHome");
	    new Float:natmx, Float:natmy, Float:natmz;
	    GetHomeMapCoord(HouseInfo[idx][hEntr][0], HouseInfo[idx][hEntr][1], natmx, natmy, natmz);
	    CreateObject(19178, natmx, natmy, natmz, 90.00, 0, 0.0);
	}
}

stock GetMiniMapCoord(Float:x, Float:y, &Float:nx, &Float:ny, &Float:nz)
{
    nx = x/2000;
    nz = y/2000;
    ny = POS_Y;
    nx+=POS_X;
    nz+=POS_Z;
}

stock GetHomeMapCoord(Float:x, Float:y, &Float:nx, &Float:ny, &Float:nz)
{
    nx = x/2000;
    nz = y/2000;
    ny = AH_Y;
    nx+=AH_X;
    nz+=AH_Z;
}

stock Markets(playerid)
{
	if(IsPlayerInRangeOfPoint(playerid, 4.0,1764.6361,-1885.7416,14.8846)) return true;
	return false;
}

stock Fractions_Type(playerid)
{
	new fractions_liness[1024];
	switch(GetPVarInt(playerid, "pLeader"))
	{
	    case 0: fractions_liness = "Нет";
	    case 1: fractions_liness = "Иллюминаты";
	    case 2: fractions_liness = "Маджестик-12";
	    case 3: fractions_liness = "Интерпол";
	    case 4: fractions_liness = "Новые Сыны свободы";
	    case 5: fractions_liness = "Национальные Сепаратистские Войска";
	    case 6: fractions_liness = "UNATCO";
	    case 7: fractions_liness = "Партизаны";
	    case 8: fractions_liness = "ООН";
	    case 9: fractions_liness = "Управление полиции ЛС";
	    case 10: fractions_liness = "Управление полиции ЛВ";
	    case 11: fractions_liness = "FEMA";
	    case 12: fractions_liness = "ТВ Центр";

	}
	switch(GetPVarInt(playerid, "pMember"))
	{
 		case 0: fractions_liness = "Нет";
	    case 1: fractions_liness = "Иллюминаты";
	    case 2: fractions_liness = "Маджестик-12";
	    case 3: fractions_liness = "Интерпол";
	    case 4: fractions_liness = "Новые Сыны свободы";
	    case 5: fractions_liness = "Национальные Сепаратистские Войска";
	    case 6: fractions_liness = "UNATCO";
	    case 7: fractions_liness = "Партизаны";
	    case 8: fractions_liness = "ООН";
	    case 9: fractions_liness = "Управление полиции ЛС";
	    case 10: fractions_liness = "Управление полиции ЛВ";
	    case 11: fractions_liness = "FEMA";
	    case 12: fractions_liness = "ТВ Центр";
	}
	return fractions_liness;
}

stock Colors_Type(playerid)
{
	switch(GetPVarInt(playerid, "pMember"))
	{
	    case 1: SetPlayerColor(playerid, COLOR_LIGHTRED);
	    case 2: SetPlayerColor(playerid, COLOR_GREEN);
	    case 3: SetPlayerColor(playerid, COLOR_YELLOW);
	    case 4: SetPlayerColor(playerid, COLOR_AQUA);
	    case 5: SetPlayerColor(playerid, COLOR_AQUA);
	    case 6: SetPlayerColor(playerid, COLOR_AQUA);
	    case 7: SetPlayerColor(playerid, COLOR_AQUA);
	    case 8: SetPlayerColor(playerid, COLOR_GRELIN);
	    case 9: SetPlayerColor(playerid, COLOR_BLUE);
	    case 10: SetPlayerColor(playerid, COLOR_BLUE);
	    case 11: SetPlayerColor(playerid, COLOR_WHITE);
	    case 12: SetPlayerColor(playerid, COLOR_ORANGE);
	}
}

stock Admins_Type(playerid)
{
    new admins_liness[256];
    if(GetPVarInt(playerid, "pAdmin"))
    {
		switch(GetPVarInt(playerid, "pAdmin"))
		{
		    case 1: admins_liness = "Младший Модератор";
		    case 2: admins_liness = "Младший Модератор";
		    case 3: admins_liness = "Модератор";
		    case 4: admins_liness = "Младший Администратор";
		    case 5: admins_liness = "Администратор";
		    case 6: admins_liness = "Смотрящий";
		    case 7: admins_liness = "Спец. Администратор";
		    case 8: admins_liness = "Главный Администратор";
		    case 9: admins_liness = "Глава совета старейшин";
		    case 10: admins_liness = "Владыка";
		    default: admins_liness = "Fatal Error";
		}
	}
	return admins_liness;
}

stock Ranks_Type(playerid)
{
	/*
		1. Иллюминаты
		2. Маджестик-12
		3. Интерпол
		4. Новые Сыны Свободы
		5. Национальные Сепаратистские Войска
		6. UNATCO
		7. Партизаны
		8. ООН
		9. Управление полиции ЛС
		10. Управление полиции ЛВ
		11. FEMA
		12. ТВ Центр
	*/
	new ranks_liness[1024];
	if(GetPVarInt(playerid, "pLeader") == 1 || GetPVarInt(playerid, "pMember") == 1)
 	{
		switch(GetPVarInt(playerid, "pRank"))
		{
		    case 1: ranks_liness = "Водитель";
		    case 2: ranks_liness = "Охранник";
		    case 3: ranks_liness = "Пресс-секретарь";
		    case 4: ranks_liness = "Советник по нелегальным организациям";
		    case 5: ranks_liness = "Советник по Армиям";
		    case 6: ranks_liness = "Советник по МВД";
		    case 7: ranks_liness = "Контролёр органов здравохранения";
		    case 8: ranks_liness = "Советник по СМИ";
		    case 9: ranks_liness = "Вице-Президент";
		    case 10: ranks_liness = "Президент";
		}
	}
	if(GetPVarInt(playerid, "pLeader") == 2 || GetPVarInt(playerid, "pMember") == 2)
 	{
		switch(GetPVarInt(playerid, "pRank"))
		{
		    case 1: ranks_liness = "Водитель";
		    case 2: ranks_liness = "Охранник";
		    case 3: ranks_liness = "Пресс-секретарь";
		    case 4: ranks_liness = "Советник по нелегальным организациям";
		    case 5: ranks_liness = "Советник по Армиям";
		    case 6: ranks_liness = "Советник по МВД";
		    case 7: ranks_liness = "Контролёр органов здравохранения";
		    case 8: ranks_liness = "Советник по СМИ";
		    case 9: ranks_liness = "Вице-Президент";
		    case 10: ranks_liness = "Президент";
		}
	}
	if(GetPVarInt(playerid, "pLeader") == 3 || GetPVarInt(playerid, "pMember") == 3)
 	{
		switch(GetPVarInt(playerid, "pRank"))
		{
		    case 1: ranks_liness = "Водитель";
		    case 2: ranks_liness = "Охранник";
		    case 3: ranks_liness = "Пресс-секретарь";
		    case 4: ranks_liness = "Советник по нелегальным организациям";
		    case 5: ranks_liness = "Советник по Армиям";
		    case 6: ranks_liness = "Советник по МВД";
		    case 7: ranks_liness = "Контролёр органов здравохранения";
		    case 8: ranks_liness = "Советник по СМИ";
		    case 9: ranks_liness = "Вице-Президент";
		    case 10: ranks_liness = "Президент";
		}
	}
	if(GetPVarInt(playerid, "pLeader") == 4 || GetPVarInt(playerid, "pMember") == 4)
 	{
		switch(GetPVarInt(playerid, "pRank"))
		{
		    case 1: ranks_liness = "Водитель";
		    case 2: ranks_liness = "Охранник";
		    case 3: ranks_liness = "Пресс-секретарь";
		    case 4: ranks_liness = "Советник по нелегальным организациям";
		    case 5: ranks_liness = "Советник по Армиям";
		    case 6: ranks_liness = "Советник по МВД";
		    case 7: ranks_liness = "Контролёр органов здравохранения";
		    case 8: ranks_liness = "Советник по СМИ";
		    case 9: ranks_liness = "Вице-Президент";
		    case 10: ranks_liness = "Президент";
		}
	}
	if(GetPVarInt(playerid, "pLeader") == 5 || GetPVarInt(playerid, "pMember") == 5)
 	{
		switch(GetPVarInt(playerid, "pRank"))
		{
		    case 1: ranks_liness = "Водитель";
		    case 2: ranks_liness = "Охранник";
		    case 3: ranks_liness = "Пресс-секретарь";
		    case 4: ranks_liness = "Советник по нелегальным организациям";
		    case 5: ranks_liness = "Советник по Армиям";
		    case 6: ranks_liness = "Советник по МВД";
		    case 7: ranks_liness = "Контролёр органов здравохранения";
		    case 8: ranks_liness = "Советник по СМИ";
		    case 9: ranks_liness = "Вице-Президент";
		    case 10: ranks_liness = "Президент";
		}
	}
	if(GetPVarInt(playerid, "pLeader") == 6 || GetPVarInt(playerid, "pMember") == 6)
 	{
		switch(GetPVarInt(playerid, "pRank"))
		{
		    case 1: ranks_liness = "Водитель";
		    case 2: ranks_liness = "Охранник";
		    case 3: ranks_liness = "Пресс-секретарь";
		    case 4: ranks_liness = "Советник по нелегальным организациям";
		    case 5: ranks_liness = "Советник по Армиям";
		    case 6: ranks_liness = "Советник по МВД";
		    case 7: ranks_liness = "Контролёр органов здравохранения";
		    case 8: ranks_liness = "Советник по СМИ";
		    case 9: ranks_liness = "Вице-Президент";
		    case 10: ranks_liness = "Президент";
		}
	}
	if(GetPVarInt(playerid, "pLeader") == 7 || GetPVarInt(playerid, "pMember") == 7)
 	{
		switch(GetPVarInt(playerid, "pRank"))
		{
		    case 1: ranks_liness = "Водитель";
		    case 2: ranks_liness = "Охранник";
		    case 3: ranks_liness = "Пресс-секретарь";
		    case 4: ranks_liness = "Советник по нелегальным организациям";
		    case 5: ranks_liness = "Советник по Армиям";
		    case 6: ranks_liness = "Советник по МВД";
		    case 7: ranks_liness = "Контролёр органов здравохранения";
		    case 8: ranks_liness = "Советник по СМИ";
		    case 9: ranks_liness = "Вице-Президент";
		    case 10: ranks_liness = "Президент";
		}
	}
	if(GetPVarInt(playerid, "pLeader") == 8 || GetPVarInt(playerid, "pMember") == 8)
 	{
		switch(GetPVarInt(playerid, "pRank"))
		{
		    case 1: ranks_liness = "Водитель";
		    case 2: ranks_liness = "Охранник";
		    case 3: ranks_liness = "Пресс-секретарь";
		    case 4: ranks_liness = "Советник по нелегальным организациям";
		    case 5: ranks_liness = "Советник по Армиям";
		    case 6: ranks_liness = "Советник по МВД";
		    case 7: ranks_liness = "Контролёр органов здравохранения";
		    case 8: ranks_liness = "Советник по СМИ";
		    case 9: ranks_liness = "Вице-Президент";
		    case 10: ranks_liness = "Президент";
		}
	}
	if(GetPVarInt(playerid, "pLeader") == 9 || GetPVarInt(playerid, "pMember") == 9)
 	{
		switch(GetPVarInt(playerid, "pRank"))
		{
		    case 1: ranks_liness = "Водитель";
		    case 2: ranks_liness = "Охранник";
		    case 3: ranks_liness = "Пресс-секретарь";
		    case 4: ranks_liness = "Советник по нелегальным организациям";
		    case 5: ranks_liness = "Советник по Армиям";
		    case 6: ranks_liness = "Советник по МВД";
		    case 7: ranks_liness = "Контролёр органов здравохранения";
		    case 8: ranks_liness = "Советник по СМИ";
		    case 9: ranks_liness = "Вице-Президент";
		    case 10: ranks_liness = "Президент";
		}
	}
	if(GetPVarInt(playerid, "pLeader") == 10 || GetPVarInt(playerid, "pMember") == 10)
 	{
		switch(GetPVarInt(playerid, "pRank"))
		{
		    case 1: ranks_liness = "Водитель";
		    case 2: ranks_liness = "Охранник";
		    case 3: ranks_liness = "Пресс-секретарь";
		    case 4: ranks_liness = "Советник по нелегальным организациям";
		    case 5: ranks_liness = "Советник по Армиям";
		    case 6: ranks_liness = "Советник по МВД";
		    case 7: ranks_liness = "Контролёр органов здравохранения";
		    case 8: ranks_liness = "Советник по СМИ";
		    case 9: ranks_liness = "Вице-Президент";
		    case 10: ranks_liness = "Президент";
		}
	}
	if(GetPVarInt(playerid, "pLeader") == 11 || GetPVarInt(playerid, "pMember") == 11)
 	{
		switch(GetPVarInt(playerid, "pRank"))
		{
		    case 1: ranks_liness = "Водитель";
		    case 2: ranks_liness = "Охранник";
		    case 3: ranks_liness = "Пресс-секретарь";
		    case 4: ranks_liness = "Советник по нелегальным организациям";
		    case 5: ranks_liness = "Советник по Армиям";
		    case 6: ranks_liness = "Советник по МВД";
		    case 7: ranks_liness = "Контролёр органов здравохранения";
		    case 8: ranks_liness = "Советник по СМИ";
		    case 9: ranks_liness = "Вице-Президент";
		    case 10: ranks_liness = "Президент";
		}
	}
	if(GetPVarInt(playerid, "pLeader") == 12 || GetPVarInt(playerid, "pMember") == 12)
 	{
		switch(GetPVarInt(playerid, "pRank"))
		{
		    case 1: ranks_liness = "Водитель";
		    case 2: ranks_liness = "Охранник";
		    case 3: ranks_liness = "Пресс-секретарь";
		    case 4: ranks_liness = "Советник по нелегальным организациям";
		    case 5: ranks_liness = "Советник по Армиям";
		    case 6: ranks_liness = "Советник по МВД";
		    case 7: ranks_liness = "Контролёр органов здравохранения";
		    case 8: ranks_liness = "Советник по СМИ";
		    case 9: ranks_liness = "Вице-Президент";
		    case 10: ranks_liness = "Президент";
		}
	}
	if(GetPVarInt(playerid, "pLeader") == 13 || GetPVarInt(playerid, "pMember") == 13)
 	{
		switch(GetPVarInt(playerid, "pRank"))
		{
		    case 1: ranks_liness = "Водитель";
		    case 2: ranks_liness = "Охранник";
		    case 3: ranks_liness = "Пресс-секретарь";
		    case 4: ranks_liness = "Советник по нелегальным организациям";
		    case 5: ranks_liness = "Советник по Армиям";
		    case 6: ranks_liness = "Советник по МВД";
		    case 7: ranks_liness = "Контролёр органов здравохранения";
		    case 8: ranks_liness = "Советник по СМИ";
		    case 9: ranks_liness = "Вице-Президент";
		    case 10: ranks_liness = "Президент";
		}
	}
	if(GetPVarInt(playerid, "pLeader") == 14 || GetPVarInt(playerid, "pMember") == 14)
 	{
		switch(GetPVarInt(playerid, "pRank"))
		{
		    case 1: ranks_liness = "Водитель";
		    case 2: ranks_liness = "Охранник";
		    case 3: ranks_liness = "Пресс-секретарь";
		    case 4: ranks_liness = "Советник по нелегальным организациям";
		    case 5: ranks_liness = "Советник по Армиям";
		    case 6: ranks_liness = "Советник по МВД";
		    case 7: ranks_liness = "Контролёр органов здравохранения";
		    case 8: ranks_liness = "Советник по СМИ";
		    case 9: ranks_liness = "Вице-Президент";
		    case 10: ranks_liness = "Президент";
		}
	}
	if(GetPVarInt(playerid, "pLeader") == 15 || GetPVarInt(playerid, "pMember") == 15)
 	{
		switch(GetPVarInt(playerid, "pRank"))
		{
		    case 1: ranks_liness = "Водитель";
		    case 2: ranks_liness = "Охранник";
		    case 3: ranks_liness = "Пресс-секретарь";
		    case 4: ranks_liness = "Советник по нелегальным организациям";
		    case 5: ranks_liness = "Советник по Армиям";
		    case 6: ranks_liness = "Советник по МВД";
		    case 7: ranks_liness = "Контролёр органов здравохранения";
		    case 8: ranks_liness = "Советник по СМИ";
		    case 9: ranks_liness = "Вице-Президент";
		    case 10: ranks_liness = "Президент";
		}
	}
	if(GetPVarInt(playerid, "pLeader") == 16 || GetPVarInt(playerid, "pMember") == 16)
 	{
		switch(GetPVarInt(playerid, "pRank"))
		{
		    case 1: ranks_liness = "Водитель";
		    case 2: ranks_liness = "Охранник";
		    case 3: ranks_liness = "Пресс-секретарь";
		    case 4: ranks_liness = "Советник по нелегальным организациям";
		    case 5: ranks_liness = "Советник по Армиям";
		    case 6: ranks_liness = "Советник по МВД";
		    case 7: ranks_liness = "Контролёр органов здравохранения";
		    case 8: ranks_liness = "Советник по СМИ";
		    case 9: ranks_liness = "Вице-Президент";
		    case 10: ranks_liness = "Президент";
		}
	}
	if(GetPVarInt(playerid, "pLeader") == 17 || GetPVarInt(playerid, "pMember") == 17)
 	{
		switch(GetPVarInt(playerid, "pRank"))
		{
		    case 1: ranks_liness = "Водитель";
		    case 2: ranks_liness = "Охранник";
		    case 3: ranks_liness = "Пресс-секретарь";
		    case 4: ranks_liness = "Советник по нелегальным организациям";
		    case 5: ranks_liness = "Советник по Армиям";
		    case 6: ranks_liness = "Советник по МВД";
		    case 7: ranks_liness = "Контролёр органов здравохранения";
		    case 8: ranks_liness = "Советник по СМИ";
		    case 9: ranks_liness = "Вице-Президент";
		    case 10: ranks_liness = "Президент";
		}
	}
	if(GetPVarInt(playerid, "pLeader") == 18 || GetPVarInt(playerid, "pMember") == 18)
 	{
		switch(GetPVarInt(playerid, "pRank"))
		{
		    case 1: ranks_liness = "Чижик";
		    case 2: ranks_liness = "Циньга";
		    case 3: ranks_liness = "Солдато";
		    case 4: ranks_liness = "Бычок";
		    case 5: ranks_liness = "Бычара";
		    case 6: ranks_liness = "Анти-Вояка";
		    case 7: ranks_liness = "Легион";
		    case 8: ranks_liness = "Связной";
		    case 9: ranks_liness = "Клементино";
		    case 10: ranks_liness = "Капитан";
		}
	}
	if(GetPVarInt(playerid, "pLeader") == 21 || GetPVarInt(playerid, "pMember") == 21)
 	{
		switch(GetPVarInt(playerid, "pRank"))
		{
		    case 1: ranks_liness = "Гринго";
		    case 2: ranks_liness = "Капоэйро";
		    case 3: ranks_liness = "Угнетатель";
		    case 4: ranks_liness = "Смерч";
		    case 5: ranks_liness = "Гольф-Стрим";
		    case 6: ranks_liness = "Скрепочник";
		    case 7: ranks_liness = "Шторм";
		    case 8: ranks_liness = "Штиль";
		    case 9: ranks_liness = "Торнадо";
		    case 10: ranks_liness = "Ураган";
		}
	}
	if(GetPVarInt(playerid, "pLeader") == 0 || GetPVarInt(playerid, "pMember") == 0)
	{
	    switch(GetPVarInt(playerid, "pJob"))
     	{
      		case 0: ranks_liness = "Безработный";
      		case 1: ranks_liness = "Уличный торговец";
      		case 2: ranks_liness = "Скотовоз";
      		case 3: ranks_liness = "Развозчик товаров";
      		case 4: ranks_liness = "Водитель автобуса";
      		case 5: ranks_liness = "Дальнобойщик";
      		case 6: ranks_liness = "Дальнобойщик";
      		case 7: ranks_liness = "Дальнобойщик";
      		case 8: ranks_liness = "Дальнобойщик";
		}
	}
	return ranks_liness;
}

stock IsInAllowedF(fnumbers)
{
    for(new i = 0; i < sizeof(allowedfactions); i++)
    {
        if(fnumbers == allowedfactions[i]) return true;
    }
    return 0;
}

stock BankList(playerid) return ShowPlayerDialog(playerid, D_ATM, d_List, "{6699FF}ATM: Меню", "1. Баланс счета\n2. Пополнить счет\n3. Снять со счета\n4. Пополнение бизнес счёта\n5. Пополнение домашнего счёта\n6. Пополнение АЗС счёта\n7. Оплата мобильной связи\n8. Благотварительность\n9. Безналичный перевод\n10. Реклама", "Выбрать", "Выход");

stock Drive(playerid) return ShowPlayerDialog(playerid, D_DRIVE_EXAM, d_Box, "{6699FF}Введение", "{FFFFFF}Это пособие поможет вам хорошо подготовиться\nк экзамену по вождению\n\n{DAA520}Для того, чтобы начать обучение нажмите 'Далее'", "Далее", "Выход");

stock Jobs_Invite(playerid)
{
	if(GetPVarInt(playerid, "pMember") == 0)
	{
		ShowPlayerDialog(playerid, D_WORK+1, d_List, "{6699FF}Приём на работу", "{FFFFFF}1. Уличный торговец\t\t{6699FF}1 уровень\n{FFFFFF}2. Скотовоз\t\t\t{6699FF}3 уровень\n{FFFFFF}3. Развозчик продуктов\t{6699FF}5 уровень\n{FFFFFF}4. Водитель автобуса\t\t{6699FF}2 уровень\n{FFFFFF}5. Дальнобойщик\t\t{6699FF}7 уровень", "Выбрать", "Выход");
	}
	else
	{
	    format(lines, sizeof(lines), "{FFFFFF}Вы состоите в организации '%s'\n\
		и если хотите устроиться на работу, то Вам придётся покинуть её.\nПри этом Ваши достижения в организации, такие как ранг, не сохранятся\n\n\
		Вы уверены что хотите уволиться из организации?", Fractions_Type(playerid));
		ShowPlayerDialog(playerid, D_WORK, d_Box, "{6699FF}Приём на работу", lines, "Да", "Нет");
	}
	return true;
}

stock SetPlayerFloat(username[], column[], Float:value)
{
	mysql_format(Mysql, query, sizeof(query),"UPDATE `"TABLE_ACCOUNT"` SET Heal = '%f' WHERE name = '%e' LIMIT 1", column, Float:value, username);
	return mysql_function_query(Mysql, query, false, "", "");
}

stock SetHealth(playerid, Float:Heal)
{
	SetPVarFloat(playerid, "pHeal", Heal);
	SetPlayerHealth(playerid, GetPVarFloat(playerid, "pHeal"));
	SetPlayerFloat(GetName(playerid), "Heal", Heal);
	return true;
}

stock EditSettings(playerid)
{
	new c_settings[128], f_settings[128], n_settings[128], i_settings[128], m_settings[128], u_settings[100];
	if(GetPVarInt(playerid, "pTS1") == 1) format(c_settings, sizeof(c_settings), "{0F8FCD}Tranquility");
	else if(GetPVarInt(playerid, "pTS1") == 0) format(c_settings, sizeof(c_settings), "{FF0000}Стандартный");
	if(GetPVarInt(playerid, "pTS2") == 1) format(f_settings, sizeof(f_settings), "{00FF00}Включен");
	else if(GetPVarInt(playerid, "pTS2") == 0) format(f_settings, sizeof(f_settings), "{FF0000}Отключен");
	if(GetPVarInt(playerid, "pTS3") == 1) format(n_settings, sizeof(n_settings), "{00FF00}Включены");
	else if(GetPVarInt(playerid, "pTS3") == 0) format(n_settings, sizeof(n_settings), "{FF0000}Отключены");
	if(GetPVarInt(playerid, "pTS4") == 1) format(i_settings, sizeof(i_settings), "{00FF00}Включены");
	else if(GetPVarInt(playerid, "pTS4") == 0) format(i_settings, sizeof(i_settings), "{FF0000}Отключены");
	if(GetPVarInt(playerid, "pTS5") == 1) format(m_settings, sizeof(m_settings), "{00FF00}Включены");
	else if(GetPVarInt(playerid, "pTS5") == 0) format(m_settings, sizeof(m_settings), "{FF0000}Отключены");
	if(GetPVarInt(playerid, "pAKey") == 1) format(u_settings, sizeof(u_settings), "{00FF00}Клавиши и команды");
	else if(GetPVarInt(playerid, "pAKey") == 0) format(u_settings, sizeof(u_settings), "{00FF88}Управл. командами");
	format(lines, sizeof(lines), "{FFFFFF}Основной чат\t\t\t%s\n{FFFFFF}Чат организации\t\t%s\n{FFFFFF}Ники над игроками\t\t%s\n{FFFFFF}Ники в чате\t\t\t%s\n{FFFFFF}ID игроков в чате\t\t%s\n{FFFFFF}Управл. транспортом\t\t%s\n{FF0000}[СОХРАНИТЬ]", c_settings, f_settings, n_settings, i_settings, m_settings, u_settings);
	return ShowPlayerDialog(playerid, D_MENU+16, d_List, "{6699FF}Личные настройки", lines, "Вкл|Выкл", "Назад");
}

stock SetPlayerInt(username[], column[], value)
{
	mysql_format(Mysql, query, sizeof(query),"UPDATE `"TABLE_ACCOUNT"` SET %e = '%d' WHERE name = '%e' LIMIT 1", column, value, username);
	return mysql_function_query(Mysql, query, false, "", "");
}

strmatch(const lines1[], const lines2[])
{   if((strcmp(lines1, lines2, true, strlen(lines2)) == 0) && (strlen(lines2) == strlen(lines1))) { return true; }
	else { return false; }
}

stock SetPlayerStr(username[], column[], value[])
{
	mysql_format(Mysql, query, sizeof(query),"UPDATE `"TABLE_ACCOUNT"` SET %e = '%e' WHERE name = '%e' LIMIT 1", column, value, username);
	return mysql_function_query(Mysql, query, false, "", "");
}

stock SetHouseInt(idx, column[], value)
{
	mysql_format(Mysql, query, sizeof(query),"UPDATE "TABLE_HOUSE" SET  %e = '%i' WHERE id = '%i' LIMIT 1", column, value, idx);
	return mysql_function_query(Mysql, query, false, "", "");
}

stock SetBizzStr(idx, column[], value[])
{
	format(query, 128, "UPDATE `"TABLE_BIZZ"` SET %s = '%s' WHERE id = '%d' LIMIT 1", column, value, idx);
	return mysql_function_query(Mysql, query, false, "", "");
}

stock SetFactInt(idx, column[], value)
{
	format(query, 128, "UPDATE `"TABLE_FACTIONS"` SET %s = '%d' WHERE id = '%d' LIMIT 1", column, value, idx);
	return mysql_function_query(Mysql, query, false, "", "");
}

stock SetFactStr(idx, column[], value[])
{
	format(query, 128, "UPDATE `"TABLE_FACTIONS"` SET %s = '%s' WHERE id = '%d' LIMIT 1'", column, value, idx);
	return mysql_function_query(Mysql, query, false, "", "");
}

stock SetBizzInt(idx, column[], value)
{
	format(query, 128, "UPDATE `"TABLE_BIZZ"` SET %s = '%d' WHERE id = '%d' LIMIT 1", column, value, idx);
	return mysql_function_query(Mysql, query, false, "", "");
}

stock SetHouseStr(idx, column[], value[])
{
	mysql_format(Mysql, query, sizeof(query),"UPDATE `"TABLE_HOUSE"` SET %e = '%e' WHERE id = '%i' LIMIT 1", column, value, idx);
	return mysql_function_query(Mysql, query, false, "", "");
}

stock BizzStats(playerid, idx)
{
	if(BizzInfo[idx][bType] != 22)
	{
		format(lines, 500, "{FFFFFF}Название бизнеса:\t\t{6699FF}%s\n{FFFFFF}Владелец:\t\t\t{6699FF}%s\n\n{FFFFFF}На счету бизнеса:\t\t{6699FF}%i $\n{FFFFFF}В этом часу заработано:\t{6699FF}%i $\n{FFFFFF}Цена за товар:\t\t{6699FF}%i процентов\n\n{FFFFFF}Продуктов:\t\t\t{6699FF}%i / 20000\n\n{FFFFFF}Статус:\t\t\t\t%s\n{FFFFFF}Лицензия на бизнес:\t\t%s",
		BizzInfo[idx][bName], BizzInfo[idx][bOwner], BizzInfo[idx][bMoney], BizzPay[idx], BizzInfo[idx][bTill], BizzInfo[idx][bProduct],(!BizzInfo[idx][bLock])?("{00FF00}Открыт") : ("{FF0000}Закрыто"),(!BizzInfo[idx][bLic])?("{FF6347}Нет"):("{00D900}Да"));
 	}
 	else
 	{
 		format(lines, 500, "{FFFFFF}Название бизнеса:\t\t{6699FF}%s\n{ffffff}Владелец:\t\t\t{6699FF}%s\n\n{FFFFFF}На счету бизнеса:\t\t{6699FF}%i $\n{FFFFFF}В этом часу заработано:\t{6699FF}%i $\n{FFFFFF}Цена за 1 литр:\t\t{6699FF}%i $\n\n{ffffff}Топлива:\t\t\t{6699FF}%i / 50000\n\n{FFFFFF}Статус:\t\t\t\t%s\n{FFFFFF}Лицензия на бизнес:\t\t%s",
		BizzInfo[idx][bName], BizzInfo[idx][bOwner], BizzInfo[idx][bMoney], BizzPay[idx], BizzInfo[idx][bTill] / 3, BizzInfo[idx][bProduct],(!BizzInfo[idx][bLock])?("{00FF00}Открыт") : ("{FF0000}Закрыто"),(!BizzInfo[idx][bLic])?("{FF0000}Отсутствует"):("{00FF00}Присутствует"));
 	}
 	return ShowPlayerDialog(playerid, D_BUSINESS+11, d_Box, "{6699FF}Статистика бизнеса", lines, "Назад", "Выход");
}

stock UpdateBizz(idx)
{
	Delete3DTextLabel(LABELBIZZ[idx]);
	if(BizzInfo[idx][bType] < 22)
	{
	    if(!strcmp(BizzInfo[idx][bOwner], "None", true))
	    {
	        format(lines, 128, "{6699FF}%s\n{FFFFFF}Предприятие продаётся", BizzInfo[TOTALBIZZ][bName]);
	        LABELBIZZ[idx] = Create3DTextLabel(lines, COLOR_WHITE, BizzInfo[idx][bEntrx], BizzInfo[idx][bEntry], BizzInfo[idx][bEntrz], 20.0, 0, 1);
		}
		else
		{
		    format(lines, 128, "{FFFFFF}{6699FF}%s\n{FFFFFF}Владелец: %s", BizzInfo[idx+1][bName], BizzInfo[idx+1][bOwner]); LABELBIZZ[idx+1] = Create3DTextLabel(lines,COLOR_GREEN,BizzInfo[idx+1][bEntrx], BizzInfo[idx+1][bEntry], BizzInfo[idx+1][bEntrz],20.0, 0, 1);
			LABELBIZZ[idx] = Create3DTextLabel(lines, COLOR_WHITE, BizzInfo[idx][bEntrx], BizzInfo[idx][bEntry], BizzInfo[idx][bEntrz], 20.0, 0, 1);
		}
	}
	else
	{
	    if(!strcmp(BizzInfo[idx][bOwner], "None", true))
	    {
	        format(lines, 128, "{6699FF}%s\n{FFFFFF}Предприятие продаётся", BizzInfo[TOTALBIZZ][bName]);
	        LABELBIZZ[idx] = Create3DTextLabel(lines, COLOR_WHITE, BizzInfo[idx][bEntrx], BizzInfo[idx][bEntry], BizzInfo[idx][bEntrz], 20.0, 0, 1);
		}
		else
		{
		    format(lines, 128, "{6699FF}%s\n{FFFFFF}Владелец: %s\nЦена за 10 литров: {6699FF}%i", BizzInfo[TOTALBIZZ][bName], BizzInfo[idx][bOwner], BizzInfo[idx], BizzInfo[idx][bTill] /3);
		    LABELBIZZ[idx] = Create3DTextLabel(lines, COLOR_WHITE, BizzInfo[idx][bEntrx], BizzInfo[idx][bEntry], BizzInfo[idx][bEntrz], 20.0, 0, 1);
		}
	}
	return true;
}

stock UpdateHouse(idx)
{
	DestroyPickup(HouseInfo[idx][hPickup][0]);
    //DestroyDynamicMapIcon(HouseInfo[idx][hMIcon]);
   	if(!strcmp(HouseInfo[idx][hOwner],"None",true))
	{
	    new Float:natmx, Float:natmy, Float:natmz;
 		GetMiniMapCoord(HouseInfo[idx][hEntr][0], HouseInfo[idx][hEntr][1], natmx, natmy, natmz);
   		CreateObject(19178, natmx, natmy, natmz, 90.00, 0, 0.0);
		//HouseInfo[idx][hMIcon] = CreateDynamicMapIcon(HouseInfo[idx][hEntr][0], HouseInfo[idx][hEntr][1], HouseInfo[idx][hEntr][2], 31, 0,-1,-1,-1,200.0);
		HouseInfo[idx][hPickup][0] = CreatePickup(1273, 1, HouseInfo[idx][hEntr][0], HouseInfo[idx][hEntr][1], HouseInfo[idx][hEntr][2]);
 	}
	else
	{
		//HouseInfo[idx][hMIcon] = CreateDynamicMapIcon(HouseInfo[idx][hEntr][0], HouseInfo[idx][hEntr][1], HouseInfo[idx][hEntr][2], 32, 0,-1,-1,-1,200.0);
		HouseInfo[idx][hPickup][0] = CreatePickup(1272, 1, HouseInfo[idx][hEntr][0], HouseInfo[idx][hEntr][1], HouseInfo[idx][hEntr][2]);
	}
	return true;
}

stock SendAdminMessage(color, str[])
{
	for(new idx = 0, playerid = 0; idx < cvector_size(FOR_SERVERS); idx++)
	{
	    playerid = cvector_get(FOR_SERVERS, idx);
	    if(playerid != -1 && GetPlayerTeam(playerid) == 0) continue;
	    if(!GetPVarInt(idx, "Logged")) continue;
	    if(GetPVarInt(idx, "pAdmin") > 0 && GetPVarInt(idx, "SendAdmin") != 0) SendClientMessage(idx, color, str);
	}
	return true;
}

stock SendRMes(family, color, str[])
{
	for(new i = 0; i < GetMaxPlayers(); i++)
	{
	    if(!IsPlayerConnected(i)) continue;
	    if(GetPVarInt(i, "pMember") == family) SendClientMessage(i, color, str);
	}
	return true;
}

stock SendFMes(color, str[])
{
	for(new i = 0; i < GetMaxPlayers(); i++)
	{
		if(!IsPlayerConnected(i)) continue;
		if(GetPVarInt(i, "pMember") == 1 || GetPVarInt(i, "pMember") == 2 || GetPVarInt(i, "pMember") == 3 || GetPVarInt(i, "pMember") == 4 || GetPVarInt(i, "pMember") == 5)  SendClientMessage(i, color, str);
	}
	return true;
}

stock ProxDetector(playerid, Float:Rad = 10.0, color, text[])
{
    new Float:Pos[3];
	GetPlayerPos(playerid,Pos[0],Pos[1],Pos[2]);
	foreach (new i : Player)
    {
        if(!GetPVarInt(playerid,"Logged")) continue;
       	if(!IsPlayerInRangeOfPoint(i, Rad, Pos[0], Pos[1], Pos[2])) continue;
       	if(GetPlayerVirtualWorld(i) == GetPlayerVirtualWorld(playerid) && GetPlayerInterior(playerid) == GetPlayerInterior(i)) SendClientMessage(i, color, text);
    }
    return true;
}

stock CreateAccount(playerid, pass[])
{
	SendClientMessage(playerid, COLOR_WHITE, "[*] - По игровым вопросам обращайтесь в {BFF9B0}/setup - Связь с Администрацией");
	SendClientMessage(playerid, COLOR_WHITE, "[*] - Для безопасности рекомендуем использовать нейромодуль безопасности, подробнее: {B3F9B0}/setup - Настройки безопасности");
	SendClientMessage(playerid, COLOR_WHITE, "[*] - Однако это не гарантирует безопасность, так как ни одна система не является безопасной. Мы, откровенно говоря, считаем её уязвимой.");
	SendClientMessage(playerid, COLOR_WHITE, "[*] - Настоятельно рекомендуем прочитать {B3F9B0}'Помощь по игре'{FFFFFF}. Удачной Вам попытки сбежать от реальности!");
	SendClientMessage(playerid, COLOR_WHITE, "[*] - Для того, чтобы аннигилировать и без того бедных гоев, используйте вспомогательный инструмент 'Тайфун', который позволит Вам ");
	SendClientMessage(playerid, COLOR_WHITE, "'анально' карать людей, добровольно вступивших в игру. Возможности данного сервера относительно безграничны.");
	SendClientMessage(playerid, COLOR_WHITE, "[*] - Используйте его с умом, иначе владыка сервера поместит Вас в карцер временного содержания. Однако Вы всё равно сбежите от этого. Всё тлен. Всё бесполезно.");
	SendClientMessage(playerid, COLOR_RED, "[!] Симуляция реализована на устаревшем движке GTA San Andreas ввиду того, что у разработчика нет внутреннего стержня.");
	GivePlayerWeapon(playerid, 10, 1);
	new ip[32], data[16];
	GetPlayerIp(playerid, ip, 32);
	format(data, 16, "%s",date("%dd.%mm.%yyyy",gettime()));
	mysql_format(Mysql, query, sizeof(query),"INSERT INTO "TABLE_ACCOUNT" (name, password, ip, datareg, sex, model, mail, spawns, age, nation) VALUES ('%e', '%e', '%e', '%e', %d, %d, '%e', '%d', %d, '%s')", GetName(playerid), pass, ip, data, GetPVarInt(playerid, "pSex"), GetPVarInt(playerid, "pModel"), cDataInfo[playerid][pMail], GetPVarInt(playerid, "pSpawns"), GetPVarInt(playerid, "pAge"), cDataInfo[playerid][pNation]);
	mysql_function_query(Mysql, query, false, "", "");
	return LoadAccount(playerid);
}

stock GetPlayerFaction(playerid)
{
	new faction;
	for(new i = 1; i <= TOTALFACTIONS; i++)
	{
	    if(!strcmp(FactInfo[i][fOwner], GetName(playerid), true))
	    {
	        SetPVarInt(playerid, "PlayerFact", i);
	        faction++;
	        break;
	    }
	}
	return faction;
}

stock GetPlayerBizz(playerid)
{
	new bizz;
	for(new i = 1; i <= TOTALBIZZ; i++)
	{
	    if(!strcmp(BizzInfo[i][bOwner], GetName(playerid), true))
	    {
	        SetPVarInt(playerid, "PlayerBizz", i);
	        bizz++;
	        break;
		}
	}
	return bizz;
}

stock GetPlayerHouse(playerid)
{
	new house;
	for(new i = 1; i <= TOTALHOUSE; ++i)
	{
		if(!strcmp(HouseInfo[i][hOwner],GetName(playerid),true))
		{
			SetPVarInt(playerid, "PlayerHouse", i);
			++house;
			break;
		}
	}
	return house;
}

stock Converts(seconds, linesTo[], size = sizeof(linesTo))
{
    linesTo[0] = 0x0;
    new result[4];
    result[0] = floatround(seconds / (3600 * 24));
    result[1] = floatround(seconds / 3600);
    result[2] = floatround((seconds / 60) - (result[1] * 60));
    result[3] = floatround(seconds - ((result[1] * 3600) + (result[2] * 60)));
    switch(result[0])
    {
        case 0:
        {
            switch(result[1])
            {
                case 0: format(linesTo, size,"%02d:%02d", result[2], result[3]);
                default: format(linesTo, size,"%d:%02d:%02d", result[1], result[2], result[3]);
            }
        }
    }
    return linesTo;
}

stock SpeedSecond(playerid)
{
    new Str[16], Vehicleid = GetPlayerVehicleID(playerid);
   	if(!GetGVarFloat("Fuel", Vehicleid))
	{
		GetVehicleParamsEx(Vehicleid,Vehicle[0],Vehicle[1],Vehicle[2],Vehicle[3],Vehicle[4],Vehicle[5],Vehicle[6]);
		SetVehicleParamsEx(Vehicleid,VEHICLE_PARAMS_OFF,Vehicle[1],Vehicle[2],Vehicle[3],Vehicle[4],Vehicle[5],Vehicle[6]);
 		DeleteGVar("Engine", Vehicleid);
	}
	SetGVarFloat("Mileage", GetGVarFloat("Mileage", Vehicleid) +((GetSpeed(playerid) / 2.5) / 1000), Vehicleid);
	format(Str, sizeof(Str), "%.0f KM", GetGVarFloat("Mileage", Vehicleid));
	TextDrawSetString(Speed[playerid][11] , Str);
	format(Str, sizeof(Str), "%.0f", GetGVarFloat("Fuel", Vehicleid));
 	TextDrawSetString(Speed[playerid][4], Str);
  	if(!GetGVarInt("Engine", Vehicleid)) TextDrawSetString(Speed[playerid][18], " ");
    else TextDrawSetString(Speed[playerid][18], "~g~E");
    if(!GetGVarInt("Lights", Vehicleid)) TextDrawSetString(Speed[playerid][19], " ");
    else TextDrawSetString(Speed[playerid][19], "~g~L");
    if(!GetGVarInt("Bonet", Vehicleid)) TextDrawSetString(Speed[playerid][20], " ");
    else TextDrawSetString(Speed[playerid][20], "~g~B");
    if(!GetGVarInt("Alarm", Vehicleid)) TextDrawSetString(Speed[playerid][21], " ");
    else TextDrawSetString(Speed[playerid][21], "~g~A");
   	switch(floatround(GetGVarFloat("Fuel", Vehicleid)))
	{
 		case 0..5: TextDrawSetString(Speed[playerid][17], " ");
	 	case 6..10: TextDrawSetString(Speed[playerid][17], "~r~~h~~h~I");
  		case 11..15: TextDrawSetString(Speed[playerid][17], "~r~~h~~h~II");
  		case 16..20: TextDrawSetString(Speed[playerid][17], "~r~~h~~h~III");
   		case 21..25: TextDrawSetString(Speed[playerid][17], "~r~~h~~h~IIII");
    	case 26..30: TextDrawSetString(Speed[playerid][17], "~y~~h~IIIII");
    	case 31..35: TextDrawSetString(Speed[playerid][17], "~y~~h~IIIIII");
    	case 36..40: TextDrawSetString(Speed[playerid][17], "~y~~h~IIIIIII");
    	case 41..45: TextDrawSetString(Speed[playerid][17], "~y~~h~IIIIIIII");
    	case 46..50: TextDrawSetString(Speed[playerid][17], "~y~~h~IIIIIIIII");
    	case 51..55: TextDrawSetString(Speed[playerid][17], "~y~~h~IIIIIIIIII");
    	case 56..60: TextDrawSetString(Speed[playerid][17], "~w~~h~IIIIIIIIIII");
    	case 61..65: TextDrawSetString(Speed[playerid][17], "~w~~h~IIIIIIIIIIII");
    	case 66..70: TextDrawSetString(Speed[playerid][17], "~w~~h~IIIIIIIIIIIII");
    	case 71..75: TextDrawSetString(Speed[playerid][17], "~w~~h~IIIIIIIIIIIIII");
    	case 76..150: TextDrawSetString(Speed[playerid][17], "~w~~h~IIIIIIIIIIIIIII");
	}
}

stock UpdateSpeed(playerid)
{
	new Str[16], SPD = GetSpeed(playerid);
	format(Str, sizeof(Str), "%i", SPD);
	TextDrawSetString(Speed[playerid][8], Str);
	switch(SPD)
	{
	    case 0..5: TextDrawSetString(Speed[playerid][16], " ");
	    case 6..10: TextDrawSetString(Speed[playerid][16], "~w~~h~I");
	    case 11..20: TextDrawSetString(Speed[playerid][16], "~w~~h~II");
	    case 21..30: TextDrawSetString(Speed[playerid][16], "~w~~h~III");
	    case 31..40: TextDrawSetString(Speed[playerid][16], "~w~~h~IIII");
	    case 41..50: TextDrawSetString(Speed[playerid][16], "~w~~h~IIIII");
	    case 51..60: TextDrawSetString(Speed[playerid][16], "~w~~h~IIIIII");
	    case 61..70: TextDrawSetString(Speed[playerid][16], "~w~~h~IIIIIII");
	    case 71..80: TextDrawSetString(Speed[playerid][16], "~w~~h~IIIIIIII");
	    case 81..90: TextDrawSetString(Speed[playerid][16], "~w~~h~IIIIIIIII");
	    case 91..100: TextDrawSetString(Speed[playerid][16], "~y~~h~IIIIIIIIII");
	    case 101..110: TextDrawSetString(Speed[playerid][16], "~y~~h~IIIIIIIIIII");
	    case 111..120: TextDrawSetString(Speed[playerid][16], "~y~~h~IIIIIIIIIIII");
	    case 121..130: TextDrawSetString(Speed[playerid][16], "~y~~h~IIIIIIIIIIIII");
	    case 131..140: TextDrawSetString(Speed[playerid][16], "~r~~h~~h~IIIIIIIIIIIIII");
	    case 141..999: TextDrawSetString(Speed[playerid][16], "~r~~h~~h~IIIIIIIIIIIIIII");
	}
}

stock GetSpeed(playerid)
{
    new Float:ST[3];
    if(!IsPlayerInAnyVehicle(playerid)) GetPlayerVelocity(playerid,ST[0],ST[1],ST[2]);
	else GetVehicleVelocity(GetPlayerVehicleID(playerid),ST[0],ST[1],ST[2]);
    return floatround(floatsqroot(ST[0]*ST[0]+ST[1]*ST[1]+ST[2]*ST[2])*200);
}

stock PayDayTimer()
{
	new Time[3];
    gettime(Time[0], Time[1], Time[2]);
    if((Time[0] > gTime[0]) || (!Time[0] && gTime[0] == 23))
	{
		gTime[0] = Time[0];
		SetWorldTime(Time[0]);
		SetWeather(random(10));
  		PayDay();
	}
	return true;
}

stock PayDay()
{
	foreach(new i : Player)
	{
		if(!GetPVarInt(i, "Logged")) continue;
		GameTextForPlayer(i, "PayDay", 5000, 1);
		SendMes(i, COLOR_WHITE, "[S] Текущее время: {6699FF}%i:00", gTime[0]);
		SetPVarInt(i, "pExp", GetPVarInt(i, "pExp")+1);
		if(GetPVarInt(i, "pExp") >= GetPVarInt(i, "pLevel")*8)
		{
		    new years_month[64];
		    switch(GetPVarInt(i, "pLevel"))
		    {
		        case 1: years_month = "год";
		        case 2..4: years_month = "года";
		        case 5..20: years_month = "лет";
		        case 21: years_month = "год";
		        case 22..24: years_month = "года";
		        case 25..30: years_month = "лет";
		        case 31: years_month = "год";
		        case 32..34: years_month = "года";
		        case 35..40: years_month = "лет";
		    }
			SetPVarInt(i, "pLevel", GetPVarInt(i, "pLevel")+1);
			SetPVarInt(i, "pExp", 0);
			SetPlayerInt(GetName(i), "Level", GetPVarInt(i, "pLevel"));
			SetPlayerInt(GetName(i), "Exp", GetPVarInt(i, "pExp"));
			SetPlayerScore(i, GetPVarInt(i, "pLevel"));
			SendMes(i, 0xFF0000FF, "[P] Ваш игровой уровень повышен! Теперь вы проживаете в штате %i %s.", GetPVarInt(i, "pLevel"), years_month);
		}
	}
	return true;
}

stock SavePlayer(playerid)
{
	format(cDataInfo[playerid][pJobAmounts],30,"%i,%i,%i", cDataInfo[playerid][pJobAmount][0], cDataInfo[playerid][pJobAmount][1], cDataInfo[playerid][pJobAmount][2]);
	query = "";
	format(query,sizeof(query),"UPDATE `"TABLE_ACCOUNT"` SET `JobAmount` = '%s' WHERE `Name` = '%s'", cDataInfo[playerid][pJobAmounts], GetName(playerid));
	mysql_function_query(Mysql, query, false, "", "");
	return true;
}

stock GiveMoney(playerid, amount)
{
    GivePlayerMoney(playerid, amount);
	SetPVarInt(playerid, "pCash", GetPlayerMoney(playerid));
	return SetPlayerInt(GetName(playerid), "Cash", GetMoney(playerid));
}

stock SetMoney(playerid, amount)
{
    ResetPlayerMoney(playerid);
    GivePlayerMoney(playerid, amount);
	SetPVarInt(playerid, "pCash", amount);
	return SetPlayerInt(GetName(playerid), "Cash", GetMoney(playerid));
}

stock ResetMoney(playerid)
{
    ResetPlayerMoney(playerid);
	DeletePVar(playerid, "pCash");
	return SetPlayerInt(GetName(playerid), "Cash", GetMoney(playerid));
}

stock GetMoney(playerid) return GetPVarInt(playerid, "pCash");

stock IsPlayerInRangeOfPlayer(Float:radi, playerid, targetid)
{
	GetPlayerPos(targetid, cDataInfo[targetid][pPos][0], cDataInfo[targetid][pPos][1], cDataInfo[targetid][pPos][2]);
	if(IsPlayerInRangeOfPoint(playerid, radi, cDataInfo[targetid][pPos][0], cDataInfo[targetid][pPos][1], cDataInfo[targetid][pPos][2])) return true;
	return false;
}

stock LeaveFractionPlayer(playerid)
{
    SetPVarInt(playerid, "Temp", 1);
	SetPVarInt(playerid, "Clothes", 1);
	SetPVarInt(playerid, "pLeader", 0);
	SetPVarInt(playerid, "pMember", 0);
	SetPVarInt(playerid, "pRank", 0);
 	SpawnPlayer(playerid);
}

stock InvitePlayer(playerid)
{
	for(new i = 1; i < 9; i++)
	{
	    if(GetPVarInt(playerid, "pMember") == i && GetPVarInt(playerid, "pRank") >= 9) return true;
	}
	return false;
}

stock UnInvitePlayer(playerid)
{
	for(new i = 1; i < 9; i++)
	{
	    if(GetPVarInt(playerid, "pMember") == i && GetPVarInt(playerid, "pRank") >= 9) return true;
	}
	return false;
}

stock LFract_Skin(playerid)
{
	if(GetPVarInt(playerid, "pSex") == 1)
	{
		switch(GetPVarInt(playerid, "pLeader"))
		{
		    case 0:
			{
			    SetPVarInt(playerid, "Temp", 1);
				SetPVarInt(playerid, "Clothes", 1);
				SpawnPlayer(playerid);
			}
		    case 1: return 299;
		    case 2: return 295;
		    case 3: return 294;
		    case 4: return 124;
		    case 5: return 12; //
		    case 6: return 119;
		    case 7: return 15; //
		    case 8: return 18; //
		    case 9: return 20; //
		    case 10: return 25; //
		    case 11: return 35; //
		    case 12: return 290;
		}
	}
	else
	{
	    switch(GetPVarInt(playerid, "pLeader"))
		{
		    case 0:
			{
			    SetPVarInt(playerid, "Temp", 1);
				SetPVarInt(playerid, "Clothes", 1);
				SpawnPlayer(playerid);
			}
		    case 1: return 298;
		    case 2: return 85; //
		    case 3: return 192;
		    case 4: return 45; //
		    case 5: return 95; //
		    case 6: return 93;
		    case 7: return 93; //
		    case 8: return 93; //
		    case 9: return 93; //
		    case 10: return 93; //
		    case 11: return 93; //
		    case 12: return 93; //
		}
	}
	return false;
}

stock IsAV(playerid)
{
	if(GetPVarInt(playerid, "pMember") == 4) return true;
	if(GetPVarInt(playerid, "pMember") == 5) return true;
	if(GetPVarInt(playerid, "pMember") == 6) return true;
	if(GetPVarInt(playerid, "pMember") == 7) return true;
	return false;
}

stock IsACop(playerid)
{
	if(GetPVarInt(playerid, "pMember") == 8) return true;
	if(GetPVarInt(playerid, "pMember") == 9) return true;
	if(GetPVarInt(playerid, "pMember") == 10) return true;
	if(GetPVarInt(playerid, "pMember") == 1) return true;
	return false;
}

stock SetPlayerCriminal(playerid, killerid[], reason[])
{
	cDataInfo[playerid][pCrimes]++;
	strmid(cDataInfo[playerid][pWantedWho], killerid, 0, strlen(killerid), MAX_PLAYER_NAME);
	strmid(cDataInfo[playerid][pWantedReason], reason, 0, strlen(reason), 32);
	SendMes(playerid, COLOR_LIGHTRED,"[R] Вы совершили преступление: [ %s ]. Сообщает: %s. Текущий уровень розыска: %i", reason, killerid, cDataInfo[playerid][pCrimes]);
	SendMes(playerid, COLOR_YELLOW, "[F] Ваш уровень розыска: %i", cDataInfo[playerid][pWanted]);
	foreach(new i: Player)
	{
		if(IsACop(i)) SendMes(i, COLOR_ORANGE, "[R] %s. Преступление: %s. Подозреваемый: %s", killerid, reason, GetName(playerid));
	}
	return true;
}

stock HomeList(playerid, idx)
{
    SetPVarInt(playerid, "PlayerBizzz", idx);
	if(BizzInfo[idx][bProduct] < 50) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] В бизнесе нет продуктов");
	lines = "";
	format(lines, 512, "1. Телефон\t\t\t%i$\n2. Номер телефона\t\t%i$",
	BizzInfo[idx][bTill]*14, BizzInfo[idx][bTill]*3);
	ShowPlayerDialog(playerid, D_BUY, d_List, "{6699FF}Магазин 24/7", lines, "Выбрать", "Выход");
	return true;
}

stock BanksList(playerid, idx)
{
    SetPVarInt(playerid, "PlayerBizzz", idx);
	if(BizzInfo[idx][bProduct] < 50) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] В банке закончились канцелярские товары");
	lines = "";
	format(lines, 128, "{FFFFFF}Вы уверены что хотите воспользоваться услугами банка?\nУслуги банка стоят: %i$",
	BizzInfo[idx][bTill]*16);
	ShowPlayerDialog(playerid, D_BUY+1, d_List, "{6699FF}Услуги банка", lines, "Выбрать", "Выход");
    return true;
}

stock DrinkList(playerid, idx)
{
    SetPVarInt(playerid, "PlayerBizzz", idx);
	if(BizzInfo[idx][bProduct] < 50) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] В бизнесе нет продуктов");
	lines = "";
	format(lines, 512, "1. Мохито\t\t\t%i$",
	BizzInfo[idx][bTill]*12);
	ShowPlayerDialog(playerid, D_BUY+2, d_List, "{6699FF}Бар", lines, "Выбрать", "Выход");
	return true;
}

stock CandyList(playerid, idx)
{
	SetPVarInt(playerid, "PlayerBizzz", idx);
	if(BizzInfo[idx][bProduct] < 50) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] В бизнесе нет продуктов");
	lines = "";
	format(lines, 512, "1. Мармелад\t\t\t\t%i$",
	BizzInfo[idx][bTill]*7);
	ShowPlayerDialog(playerid, D_BUY+3, d_List, "{6699FF}Кондитерская", lines, "Выбрать", "Выход");
	return true;
}

stock GunzList(playerid, idx)
{
	SetPVarInt(playerid, "PlayerBizzz", idx);
	if(BizzInfo[idx][bProduct] < 50) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] В оружейном магазине закончились товары");
	lines = "";
	format(lines, 512, "1. Кастет\t1 пара\t\t%i$",
	BizzInfo[idx][bTill]*15);
	ShowPlayerDialog(playerid, D_BUY+4, d_List, "{6699FF}Магазин оружия", lines, "Выбрать", "Выход");
	return true;
}

stock DriveList(playerid, idx)
{
	SetPVarInt(playerid, "PlayerBizzz", idx);
	if(BizzInfo[idx][bProduct] < 50) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] В школе вождения исчерпан запас аккумуляторов от ИБП");
	lines = "";
	format(lines, 512, "1. Теоретическая часть\n2. Практикум\t\t\t\t%i$\n{FB2E01}3. Априори легальные лицензии",
	BizzInfo[idx][bTill]*20);
	ShowPlayerDialog(playerid, D_BUY+5, d_List, "{6699FF}Школа вождения", lines, "Выбрать", "Выход");
	return true;
}

stock ToyList(playerid, idx)
{
	SetPVarInt(playerid, "PlayerBizzz", idx);
	if(BizzInfo[idx][bProduct] < 50) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] В бизнесе нет продуктов");
	lines = "";
	format(lines, 512, "1. RC Bandit\t\t\t%i$",
	BizzInfo[idx][bTill]*7);
	ShowPlayerDialog(playerid, D_BUY+6, d_List, "{6699FF}Магазин игрушек", lines, "Выбрать", "Выход");
	return true;
}

stock ReagncyeList(playerid, idx)
{
	SetPVarInt(playerid, "PlayerBizzz", idx);
	if(BizzInfo[idx][bProduct] < 50) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Временно утрачена информация о недвижимости. Пожалуйста зайдите позже.");
	lines = "";
	format(lines, 512, "1. Информация о доступных домах\t%i$\n2. Навигация по штату\n3. Уровень инфляции\n4. Агроном\n5. Теория хаоса\t\t\t%i$",
	BizzInfo[idx][bTill]*20, BizzInfo[idx][bTill]*45);
	ShowPlayerDialog(playerid, D_BUY+6, d_List, "{6699FF}Агенство недвижимости", lines, "Выбрать", "Выход");
	return true;
}

stock Bank_Money(playerid)
{
	ShowPlayerDialog(playerid, D_BANK, d_List, "{6699FF}Меню банка", "1. Мои счета\n2. Открыть счёт\n3. Информация о банке", "Выбрать", "Выход");
	return true;
}

PositionFromOffset(
    Float:  input_x,
    Float:  input_y,
    Float:  input_z,
    Float:  input_rx,
    Float:  input_ry,
    Float:  input_rz,
    Float:  offset_x,
    Float:  offset_y,
    Float:  offset_z,
    &Float: ret_x,
    &Float: ret_y,
    &Float: ret_z
) {
    new
        Float:cos_x = floatcos(input_rx, degrees),
        Float:cos_y = floatcos(input_ry, degrees),
        Float:cos_z = floatcos(input_rz, degrees),
        Float:sin_x = floatsin(input_rx, degrees),
        Float:sin_y = floatsin(input_ry, degrees),
        Float:sin_z = floatsin(input_rz, degrees)
    ;

    ret_x = input_x + offset_x * cos_y * cos_z - offset_x * sin_x * sin_y * sin_z - offset_y * cos_x * sin_z + offset_z * sin_y * cos_z + offset_z * sin_x * cos_y * sin_z;
    ret_y = input_y + offset_x * cos_y * sin_z + offset_x * sin_x * sin_y * cos_z + offset_y * cos_x * cos_z + offset_z * sin_y * sin_z - offset_z * sin_x * cos_y * cos_z;
    ret_z = input_z - offset_x * cos_x * sin_y + offset_y * sin_x + offset_z * cos_x * cos_y;
}

PlaySoundForAll(soundid, Float:x, Float:y, Float:z) {
    for(new playerid, max_playerid = GetPlayerPoolSize(); playerid <= max_playerid; playerid ++) {
        if( IsPlayerConnected(playerid) ) {
            PlayerPlaySound(playerid, soundid, x, y, z);
        }
    }
}

CreateEntryExits()
{
    g_EntryArea = CreateDynamicSphere(-1584.0164, -2572.3108, 28.8232, 1.5);
    g_ExitArea = CreateDynamicSphere(-1578.0275, -2569.4412, 28.8323, 1.5);
}

DestroyEntryExits()
{
    DestroyDynamicArea( g_EntryArea );
    DestroyDynamicArea( g_ExitArea );
}

Float:GetElevatorFloorZ(floor)
{
    new Float:floor_z;

    switch( floor ) {
        case ELEVFLOOR_T: {
            floor_z = 29.7241;
        }
        case ELEVFLOOR_B: {
            floor_z = -5.1000;
        }
    }
    return floor_z;
}

Float:GetElevatorExtDoorZ(floor, bool:closed)
{
    new Float:door_z;
    switch(floor)
	{
        case ELEVFLOOR_T:
		{
            door_z = 29.4552;
        }
        case ELEVFLOOR_B:
		{
            door_z = -5.3646;
        }
    }
    if(!closed)
	{
        door_z += 2.8302;
    }
    return door_z;
}

CreateElevator()
{
    g_ElevData[e_ElevFloor] = ELEVFLOOR_T;

    g_ElevData[e_ElevObj] = CreateObject(18755, -1568.7562, -2563.4519, GetElevatorFloorZ(g_ElevData[e_ElevFloor]), 0.0000, 0.0000, 31.0000);
    SetObjectMaterial(g_ElevData[e_ElevObj], 1, 2669, "cj_chris", "cj_metalplate2", 0x00000000);
    SetObjectMaterial(g_ElevData[e_ElevObj], 2, 16322, "a51_stores", "wtmetal3", 0xFF696969);
    SetObjectMaterial(g_ElevData[e_ElevObj], 4, 16640, "a51", "ventb128", 0x00000000);
    SetObjectMaterial(g_ElevData[e_ElevObj], 5, 1736, "cj_ammo", "CJ_Black_metal", 0x00000000);
    SetObjectMaterial(g_ElevData[e_ElevObj], 6, 6985, "vgnfremnt2", "striplightsyel_256", 0xFFD2691E);
    SetObjectMaterial(g_ElevData[e_ElevObj], 7, 16322, "a51_stores", "wtmetal3", 0xFF696969);

    g_ElevData[e_ElevIntDoorObj][ELEVDOOR_INT_L] = CreateObject(18757, -1568.9073, -2563.4260, 29.7425, 0.0000, 0.0000, 33.5998);
    SetObjectMaterial(g_ElevData[e_ElevIntDoorObj][ELEVDOOR_INT_L], 1, 3629, "arprtxxref_las", "ws_corrugateddoor1", 0x00000000);
    AttachObjectToObject(g_ElevData[e_ElevIntDoorObj][ELEVDOOR_INT_L], g_ElevData[e_ElevObj], 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000);
    g_ElevData[e_ElevIntDoorObj][ELEVDOOR_INT_R] = CreateObject(18756, -1568.9150, -2563.4196, 29.7479, 0.0000, 0.0000, 33.4999);
    SetObjectMaterial(g_ElevData[e_ElevIntDoorObj][ELEVDOOR_INT_R], 1, 3629, "arprtxxref_las", "ws_corrugateddoor1", 0x00000000);
    AttachObjectToObject(g_ElevData[e_ElevIntDoorObj][ELEVDOOR_INT_R], g_ElevData[e_ElevObj], 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000);
    g_ElevData[e_ElevExtDoorDynObj][ELEVFLOOR_T] = CreateObject(2957, -1570.5792, -2564.6025, 29.4552, 0.0000, 0.0000, -58.8997);
    SetObjectMaterial(g_ElevData[e_ElevExtDoorDynObj][ELEVFLOOR_T], 0, 3629, "arprtxxref_las", "ws_corrugateddoor1", 0xFFC0C0C0);
    g_ElevData[e_ElevExtDoorDynObj][ELEVFLOOR_B] = CreateObject(2957, -1570.7213, -2564.3854, -5.3646, 0.0000, 0.0000, -58.8997);
    SetObjectMaterial(g_ElevData[e_ElevExtDoorDynObj][ELEVFLOOR_B], 0, 3629, "arprtxxref_las", "ws_corrugateddoor1", 0xFFC0C0C0);

    g_ElevData[e_ElevKeypadObj] = CreateObject(19273, -1569.5758, -2566.3840, 29.0475, 0.0000, 0.0000, -60.0998);
    AttachObjectToObject(g_ElevData[e_ElevKeypadObj], g_ElevData[e_ElevObj], -1.1598, -2.2197, -0.2799, 0.0000, 0.0000, 180.0000);

    new Float: elev_x, Float:elev_y, Float:elev_z;
    GetObjectPos(g_ElevData[e_ElevObj], elev_x, elev_y, elev_z);
    for(new floor; floor < MAX_ELEVFLOORS; floor ++)
	{
        g_ElevData[e_ElevDynArea][floor] = CreateDynamicSphere(elev_x, elev_y, GetElevatorFloorZ(floor), 5.0);
    }

    g_ElevData[e_ElevState] = ELEVSTATE_OPENING;
    ApplyElevatorState();
}

DestroyElevator()
{
    DestroyObject(g_ElevData[e_ElevObj] );

    for(new d; d < MAX_INT_ELEVDOORS; d ++)
	{
        DestroyObject(g_ElevData[e_ElevIntDoorObj][d] );
    }
    for(new f; f < MAX_ELEVFLOORS; f++)
	{
        DestroyObject(g_ElevData[e_ElevExtDoorDynObj][f] );
    }
    DestroyObject( g_ElevData[e_ElevKeypadObj] );
    for(new f; f < MAX_ELEVFLOORS; f++)
	{
        DestroyDynamicArea(g_ElevData[e_ElevDynArea][f] );
    }
}

ApplyElevatorState()
{
    switch(g_ElevData[e_ElevState])
	{
        case ELEVSTATE_CLOSE:
		{
            AttachObjectToObject(g_ElevData[e_ElevIntDoorObj][ELEVDOOR_INT_L], g_ElevData[e_ElevObj], 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000);
            AttachObjectToObject(g_ElevData[e_ElevIntDoorObj][ELEVDOOR_INT_R], g_ElevData[e_ElevObj], 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000);
        }
        case ELEVSTATE_CLOSING:
		{
            new floor = g_ElevData[e_ElevFloor], Float:x, Float:y, Float:z;

            GetObjectPos(g_ElevData[e_ElevExtDoorDynObj][floor], x, y, z);
            MoveObject(g_ElevData[e_ElevExtDoorDynObj][floor], x, y, GetElevatorExtDoorZ(floor, .closed = true), ELEV_MOVEDOOR_SPEED);
        }
        case ELEVSTATE_OPENING:
		{
            AttachObjectToObject(g_ElevData[e_ElevIntDoorObj][ELEVDOOR_INT_R], g_ElevData[e_ElevObj], 0.0000, -1.8, 0.0000, 0.0000, 0.0000, 0.0000);
            AttachObjectToObject(g_ElevData[e_ElevIntDoorObj][ELEVDOOR_INT_L], g_ElevData[e_ElevObj], 0.0000, 1.8, 0.0000, 0.0000, 0.0000, 0.0000);

            new floor = g_ElevData[e_ElevFloor], Float:x, Float:y, Float:z;
            GetObjectPos(g_ElevData[e_ElevExtDoorDynObj][floor], x, y, z);
            MoveObject(g_ElevData[e_ElevExtDoorDynObj][floor], x, y, GetElevatorExtDoorZ(floor, .closed = false), ELEV_MOVEDOOR_SPEED);
        }
        case ELEVSTATE_OPEN:
		{
        }
        case ELEVSTATE_MOVING_D:
		{
            new Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz;

            GetObjectPos(g_ElevData[e_ElevObj], x,  y,  z);
            GetObjectRot(g_ElevData[e_ElevObj], rx, ry, rz);
            MoveObject(g_ElevData[e_ElevObj], x, y, GetElevatorFloorZ(ELEVFLOOR_B), ELEV_MOVECAGE_SPEED, rx, ry, rz);
        }
        case ELEVSTATE_MOVING_U:
		{
            new Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz;
            GetObjectPos(g_ElevData[e_ElevObj], x,  y,  z);
            GetObjectRot(g_ElevData[e_ElevObj], rx, ry, rz);
            MoveObject(g_ElevData[e_ElevObj], x, y, GetElevatorFloorZ(ELEVFLOOR_T), ELEV_MOVECAGE_SPEED, rx, ry, rz);
        }
    }
}

CreateDoor(Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz)
{
    if(g_DoorsInitiated >= MAX_DOORS)
	{
        return INVALID_DOOR_ID;
    }
    new Float:area_x, Float:area_y, Float:area_z;
    PositionFromOffset(x, y, z, rx, ry, rz, -1.898399, -1.0117, -0.507799, area_x, area_y, area_z);
    g_DoorData[g_DoorsInitiated][e_DoorClosedZ] = z;
    g_DoorData[g_DoorsInitiated][e_DoorDynObj] = CreateObject(18756, x, y, z, rx, ry, rz);
    g_DoorData[g_DoorsInitiated][e_DoorDynArea] = CreateDynamicSphere(area_x, area_y, area_z, 4.0);
    g_DoorData[g_DoorsInitiated][e_DoorState] = DOORSTATE_CLOSE;

    SetObjectMaterial(g_DoorData[g_DoorsInitiated][e_DoorDynObj], 1, 3629, "arprtxxref_las", "ws_corrugateddoor1", 0xFFA9A9A9);
    return g_DoorsInitiated ++;
}

DestroyDoors()
{
    for(new d; d < g_DoorsInitiated; d++)
	{
        DestroyDynamicObject(g_DoorData[d][e_DoorDynObj]);
        DestroyDynamicArea(g_DoorData[d][e_DoorDynArea]);
    }
}

UpdateDoorState(doorid)
{
    switch(g_DoorData[doorid][e_DoorState])
	{
        case DOORSTATE_CLOSE, DOORSTATE_CLOSING:
		{
            if(IsAnyPlayerInDynamicArea(g_DoorData[doorid][e_DoorDynArea]))
			{
                g_DoorData[doorid][e_DoorState] = DOORSTATE_OPENING;
                new Float:x, Float:y, Float:z;
                GetObjectPos(g_DoorData[doorid][e_DoorDynObj], x, y, z);
                MoveObject(g_DoorData[doorid][e_DoorDynObj], x, y, g_DoorData[doorid][e_DoorClosedZ] + 2.3, DOOR_MOVE_SPEED);
                PlaySoundForAll(6400, x, y, z);
            }
        }
        case DOORSTATE_OPEN, DOORSTATE_OPENING:
		{
            if(!IsAnyPlayerInDynamicArea(g_DoorData[doorid][e_DoorDynArea]))
			{
                g_DoorData[doorid][e_DoorState] = DOORSTATE_CLOSING;
                new Float:x, Float:y, Float:z;
                GetObjectPos(g_DoorData[doorid][e_DoorDynObj], x, y, z);
                MoveObject(g_DoorData[doorid][e_DoorDynObj], x, y, g_DoorData[doorid][e_DoorClosedZ], DOOR_MOVE_SPEED);
            }
        }
    }
}

CreateGeneralItems()
{
    //
	g_DynamicObject[0] = CreateObject(1523, -1584.7768, -2572.9116, -6.9896, 0.0000, 0.0000, -58.4999); //freezer door
    SetObjectMaterial(g_DynamicObject[0], 0, -1, "none", "none", 0xFF696969);
    g_DynamicObject[1] = CreateObject(19828, -1580.5672, -2564.8098, -5.8962, 0.0000, 0.0000, -149.8999); //LightSwitch3Off
    SetObjectMaterial(g_DynamicObject[1], 0, -1, "none", "none", 0xFFFFFFFF);
    g_DynamicObject[2] = CreateObject(19325, -1577.6457, -2558.1743, 23.4836, 0.0000, 0.0000, -58.9000); //mazarot window
    SetObjectMaterial(g_DynamicObject[2], 0, 18646, "matcolours", "grey-90-percent", 0x96FFFFFF);
    g_DynamicObject[3] = CreateObject(2566, -1596.2181, -2575.0651, -6.4102, 0.0000, -0.0996, -149.1997); //HOTEL_S_BEDSET_3
    SetObjectMaterial(g_DynamicObject[3], 2, 14652, "ab_trukstpa", "CJ_WOOD1(EDGE)", 0xFFD2B48C);
    g_DynamicObject[4] = CreateObject(1886, -1571.0273, -2567.3593, 32.7284, 23.4999, 0.0000, -87.8000); //security cam
    g_DynamicObject[5] = CreateObject(19464, -1578.4399, -2566.2951, 30.3034, 0.0000, 0.0000, -59.0000); //wall
    SetObjectMaterial(g_DynamicObject[5], 0, 16640, "a51", "concretemanky", 0x00000000);
    g_DynamicObject[6] = CreateObject(19465, -1574.5577, -2563.9624, 30.2896, 0.0000, 0.0000, -58.8997); //doorway
    SetObjectMaterial(g_DynamicObject[6], 0, 16640, "a51", "concretemanky", 0x00000000);
    g_DynamicObject[7] = CreateObject(1886, -1578.4659, -2567.6103, 32.7555, 28.7999, 0.0000, 92.6996); //security cam
    g_DynamicObject[8] = CreateObject(19465, -1574.8452, -2570.5781, 30.2896, 0.0000, 0.0000, -58.8997); //doorway
    SetObjectMaterial(g_DynamicObject[8], 0, 16640, "a51", "concretemanky", 0x00000000);
    g_DynamicObject[9] = CreateObject(2718, -1516.9165, -2661.2246, -5.4759, 0.0000, 0.0000, 30.2000); //CJ_FLY_KILLER
    g_DynamicObject[10] = CreateObject(19408, -1571.4687, -2568.5778, 29.5415, 0.0000, 0.0000, -58.6999); //window cavity
    SetObjectMaterial(g_DynamicObject[10], 0, 16640, "a51", "concretemanky", 0x00000000);
    g_DynamicObject[11] = CreateObject(9153, -1595.4797, -2584.0954, 34.3146, -23.7000, -6.3000, -32.9999); //bush14_lvs
    SetObjectMaterial(g_DynamicObject[11], 0, 701, "badlands", "sm_des_bush1", 0x00000000);
    g_DynamicObject[12] = CreateObject(18553, -1583.0134, -2572.3156, 29.1107, 0.0000, 0.0000, 210.0000); //entrydoor exterior
    SetObjectMaterial(g_DynamicObject[12], 0, 16293, "a51_undergrnd", "Was_scrpyd_door_in_hngr", 0x00000000);
    g_DynamicObject[13] = CreateObject(18764, -1585.1285, -2573.6083, 25.3232, 0.0000, 0.0000, -58.5998); //entry floor block
    SetObjectMaterial(g_DynamicObject[13], 0, 2669, "cj_chris", "cj_metalplate2", 0x00000000);
    g_DynamicObject[14] = CreateObject(19377, -1572.2086, -2571.8618, 27.7364, 0.0000, 270.0000, 31.0000); //big floor
    SetObjectMaterial(g_DynamicObject[14], 0, 14537, "pdomebar", "club_floor2_sfwTEST", 0x00000000);
    g_DynamicObject[15] = CreateObject(19377, -1572.3824, -2571.9433, 32.7363, 0.0000, 270.0000, 31.0000); //big ceiling
    SetObjectMaterial(g_DynamicObject[15], 0, 16640, "a51", "concretemanky", 0x00000000);
    g_DynamicObject[16] = CreateObject(19466, -1571.4425, -2568.5185, 29.7737, 0.0000, 0.0000, -58.7999); //window001
    SetObjectMaterial(g_DynamicObject[16], 0, 16640, "a51", "a51_glass", 0x00000000);
    g_DynamicObject[17] = CreateObject(19464, -1578.7215, -2569.9938, 30.3034, 0.0000, 0.0000, 31.0000); //wall
    SetObjectMaterial(g_DynamicObject[17], 0, 16640, "a51", "concretemanky", 0x00000000);
    g_DynamicObject[18] = CreateObject(18764, -1580.8884, -2571.0397, 28.3631, 0.0000, 0.0000, 31.0000); //entry doorway cube
    SetObjectMaterial(g_DynamicObject[18], 0, 16640, "a51", "concretemanky", 0x00000000);
    g_DynamicObject[19] = CreateObject(1616, -1582.1555, -2574.2070, 31.1471, -22.6000, 0.0000, -4.9998); //entry exterior camer
    g_DynamicObject[20] = CreateObject(1886, -1519.9654, -2663.8588, -2.2764, 43.5000, 0.0000, 73.6996); //shop_sec_cam
    g_DynamicObject[21] = CreateObject(19464, -1573.0345, -2560.5187, 30.1033, 0.0000, 0.0000, -148.8997); //wall
    SetObjectMaterial(g_DynamicObject[21], 0, 16640, "a51", "concretemanky", 0x00000000);
    g_DynamicObject[22] = CreateObject(19477, -1570.7386, -2564.5881, 31.6145, 0.0000, -0.0996, -148.0997); //photoforbidden
    SetObjectMaterial(g_DynamicObject[22], 0, 16093, "a51_ext", "a51_fencsign", 0x00000000);
    g_DynamicObject[23] = CreateObject(19464, -1574.8133, -2574.0500, 30.3034, 0.0000, 0.0000, 31.0000); //wall
    SetObjectMaterial(g_DynamicObject[23], 0, 16640, "a51", "concretemanky", 0x00000000);
    g_DynamicObject[24] = CreateObject(19464, -1567.5893, -2566.1999, 28.7434, 0.0000, 0.0000, -59.0000); //wall
    SetObjectMaterial(g_DynamicObject[24], 0, 16640, "a51", "concretemanky", 0x00000000);
    g_DynamicObject[25] = CreateObject(19464, -1569.7641, -2567.5026, 33.8134, 0.0000, 0.0000, -59.0000); //wall
    SetObjectMaterial(g_DynamicObject[25], 0, 16640, "a51", "concretemanky", 0x00000000);
    g_DynamicObject[26] = CreateObject(19408, -1571.5057, -2568.5180, 29.5415, 0.0000, 0.0000, -58.6999); //wall056
    SetObjectMaterial(g_DynamicObject[26], 0, 16640, "a51", "concretemanky", 0x00000000);
    g_DynamicObject[27] = CreateObject(19464, -1570.4835, -2564.6662, 33.2234, 0.0000, 0.0000, -148.8997); //wall
    SetObjectMaterial(g_DynamicObject[27], 0, 16640, "a51", "concretemanky", 0x00000000);
    g_DynamicObject[28] = CreateObject(19465, -1577.5074, -2562.1813, 30.2896, 0.0000, 0.0000, -149.0997); //doorway
    SetObjectMaterial(g_DynamicObject[28], 0, 16640, "a51", "concretemanky", 0x00000000);
    g_DynamicObject[29] = CreateObject(2965, -1577.0964, -2558.8229, 23.7082, 180.0000, 270.0000, 120.8001); //mazarot logo
    SetObjectMaterial(g_DynamicObject[29], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[30] = CreateObject(19465, -1571.7192, -2572.1862, 30.2896, 0.0000, 0.0000, -149.0997); //doorway
    SetObjectMaterial(g_DynamicObject[30], 0, 16640, "a51", "concretemanky", 0x00000000);
    g_DynamicObject[31] = CreateObject(19464, -1573.0334, -2575.2915, 30.3034, 0.0000, 0.0000, -59.0000); //wall
    SetObjectMaterial(g_DynamicObject[31], 0, 16640, "a51", "concretemanky", 0x00000000);
    g_DynamicObject[32] = CreateObject(19464, -1569.1191, -2572.9328, 30.3034, 0.0000, 0.0000, -59.0000); //wall
    SetObjectMaterial(g_DynamicObject[32], 0, 16640, "a51", "concretemanky", 0x00000000);
    g_DynamicObject[33] = CreateObject(19464, -1568.1367, -2568.6333, 30.1033, 0.0000, 0.0000, -148.8997); //wall
    SetObjectMaterial(g_DynamicObject[33], 0, 16640, "a51", "concretemanky", 0x00000000);
    g_DynamicObject[34] = CreateObject(14596, -1576.5609, -2552.2939, 21.1175, 0.0000, 0.0000, 120.7994); //stairway
    SetObjectMaterial(g_DynamicObject[34], 0, 16640, "a51", "metpat64", 0x00000000);
    SetObjectMaterial(g_DynamicObject[34], 1, 18646, "matcolours", "grey-70-percent", 0x00000000);
    SetObjectMaterial(g_DynamicObject[34], 2, 18646, "matcolours", "orange", 0x00000000);
    SetObjectMaterial(g_DynamicObject[34], 4, 18646, "matcolours", "grey-80-percent", 0x00000000);
    SetObjectMaterial(g_DynamicObject[34], 6, 18646, "matcolours", "grey-10-percent", 0x00000000);
    SetObjectMaterial(g_DynamicObject[34], 8, 7247, "vgncoast", "metalwheel2_128", 0x00000000);
    g_DynamicObject[35] = CreateObject(19465, -1576.8917, -2559.0576, 30.2896, 0.0000, 0.0000, 120.9999); //doorway
    SetObjectMaterial(g_DynamicObject[35], 0, 16640, "a51", "concretemanky", 0x00000000);
    g_DynamicObject[36] = CreateObject(19377, -1576.7724, -2564.6369, 32.7262, 0.0000, 270.0000, 31.0000); //big celiling
    SetObjectMaterial(g_DynamicObject[36], 0, 16640, "a51", "concretemanky", 0x00000000);
    g_DynamicObject[37] = CreateObject(19377, -1576.6142, -2564.5305, 27.7464, 0.0000, 270.0000, 31.0000); //big floor
    SetObjectMaterial(g_DynamicObject[37], 0, 14537, "pdomebar", "club_floor2_sfwTEST", 0x00000000);
    g_DynamicObject[38] = CreateObject(19464, -1581.2159, -2561.6762, 30.3034, 0.0000, 0.0000, -59.0000); //wall
    SetObjectMaterial(g_DynamicObject[38], 0, 16640, "a51", "concretemanky", 0x00000000);
    g_DynamicObject[39] = CreateObject(19464, -1575.9990, -2551.2749, -4.4800, 0.0000, 0.0000, -59.0000); //wall
    SetObjectMaterial(g_DynamicObject[39], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[40] = CreateObject(2173, -1571.4315, -2569.3666, 27.8115, 0.0000, 0.0000, 31.0000); //MED_OFFICE_DESK_3
    SetObjectMaterial(g_DynamicObject[40], 0, 18646, "matcolours", "orange", 0x00000000);
    g_DynamicObject[41] = CreateObject(19999, -1570.1644, -2569.6791, 27.8145, 0.0000, 0.0000, -95.8002); //CutsceneChair2
    g_DynamicObject[42] = CreateObject(362, -1572.3010, -2563.1335, 32.7374, 0.0000, 74.3999, -103.9001); //minigun
    g_DynamicObject[43] = CreateObject(19477, -1567.8894, -2569.2993, 30.3110, 0.0000, 0.0000, 31.0000); //alien painting
    SetObjectMaterial(g_DynamicObject[43], 0, 14420, "dr_gsbits", "mp_apt1_pic1", 0x00000000);
    g_DynamicObject[44] = CreateObject(19893, -1571.1009, -2569.0546, 28.5958, 0.0000, 0.0000, 29.3999); //LaptopSAMP1
    SetObjectMaterial(g_DynamicObject[44], 1, 14489, "carlspics", "AH_landscap1", 0x00000000);
    g_DynamicObject[45] = CreateObject(18075, -1574.3868, -2566.8955, 32.6333, 0.0000, 0.0000, 31.2999); //lightD
    g_DynamicObject[46] = CreateObject(18553, -1578.6910, -2569.8186, 29.1107, 0.0000, 0.0000, 29.9999); //entrydoor interior
    SetObjectMaterial(g_DynamicObject[46], 0, 16293, "a51_undergrnd", "Was_scrpyd_door_in_hngr", 0xFF696969);
    g_DynamicObject[47] = CreateObject(19273, -1575.7342, -2571.0148, 29.0475, 0.0000, 0.0000, -148.6997); //KeypadNonDynamic
    g_DynamicObject[48] = CreateObject(19273, -1571.2956, -2573.0534, 29.0475, 0.0000, 0.0000, -57.2000); //KeypadNonDynamic
    g_DynamicObject[49] = CreateObject(19273, -1571.1556, -2572.9782, 29.0475, 0.0000, 0.0000, 121.2001); //KeypadNonDynamic
    g_DynamicObject[50] = CreateObject(19273, -1575.6628, -2571.1699, 29.0475, 0.0000, 0.0000, 30.1000); //KeypadNonDynamic
    g_DynamicObject[51] = CreateObject(18643, -1577.3243, -2571.2788, 32.3389, 1.0000, 134.9998, -119.9008); //LaserPointer1
    g_DynamicObject[52] = CreateObject(362, -1577.2235, -2571.4912, 32.7326, 0.0000, 74.3999, 65.4990); //minigun
    g_DynamicObject[53] = CreateObject(2965, -1577.3529, -2558.3942, 17.9381, 180.0000, 270.0000, 120.8001); //mazarot logo
    SetObjectMaterial(g_DynamicObject[53], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[54] = CreateObject(2986, -1574.0472, -2566.7634, 32.6208, 0.0000, 0.0000, 30.7999); //lxr_motelvent
    g_DynamicObject[55] = CreateObject(351, -1571.1988, -2569.4912, 28.5809, 100.0998, 56.8997, 127.9996); //shotgspa
    g_DynamicObject[56] = CreateObject(19576, -1571.1759, -2569.0205, 28.6504, 0.0000, 0.0000, 0.0000); //Apple2
    g_DynamicObject[57] = CreateObject(11729, -1576.5887, -2564.6955, 28.1056, 0.0000, 0.0000, -149.7001); //GymLockerClosed1
    g_DynamicObject[58] = CreateObject(2241, -1569.2700, -2568.1730, 28.2772, 0.0000, 0.0000, -108.1996); //Plant_Pot_5
    g_DynamicObject[59] = CreateObject(2315, -1580.2113, -2561.8666, 27.7604, 0.0000, 0.0000, 31.2000); //locker bench
    SetObjectMaterial(g_DynamicObject[59], 0, 3063, "col_wall1x", "ab_wood1", 0x00000000);
    g_DynamicObject[60] = CreateObject(11729, -1577.1495, -2565.0231, 28.1056, 0.0000, 0.0000, -149.7001); //GymLockerClosed1
    g_DynamicObject[61] = CreateObject(19464, -1582.3736, -2565.2985, 30.3034, 0.0000, 0.0000, 31.0000); //wall
    SetObjectMaterial(g_DynamicObject[61], 0, 16640, "a51", "concretemanky", 0x00000000);
    g_DynamicObject[62] = CreateObject(19464, -1565.0886, -2573.6826, 30.1033, 0.0000, 0.0000, -148.8997); //wall
    SetObjectMaterial(g_DynamicObject[62], 0, 16640, "a51", "concretemanky", 0x00000000);
    g_DynamicObject[63] = CreateObject(19464, -1573.5173, -2559.7631, 30.1033, 0.0000, 0.0000, -148.8997); //wall
    SetObjectMaterial(g_DynamicObject[63], 0, 16640, "a51", "concretemanky", 0x00000000);
    g_DynamicObject[64] = CreateObject(19464, -1576.0904, -2555.4287, -4.4800, 0.0000, 0.0000, -148.9996); //wall1fix
    SetObjectMaterial(g_DynamicObject[64], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[65] = CreateObject(11729, -1577.7103, -2565.3498, 28.1056, 0.0000, 0.0000, -149.7001); //GymLockerClosed1
    g_DynamicObject[66] = CreateObject(19464, -1570.9499, -2563.9201, -1.6196, 0.0000, 0.0000, -148.8997); //wall4fix
    SetObjectMaterial(g_DynamicObject[66], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[67] = CreateObject(19464, -1579.1363, -2550.3383, -4.4800, 0.0000, 0.0000, -148.8997); //wall
    SetObjectMaterial(g_DynamicObject[67], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[68] = CreateObject(19464, -1578.8946, -2563.3801, -4.4800, 0.0000, 0.0000, -148.9996); //wall
    SetObjectMaterial(g_DynamicObject[68], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[69] = CreateObject(19377, -1579.8857, -2559.0805, -3.0000, 0.0000, 270.0000, 31.0000); //big ceiling
    SetObjectMaterial(g_DynamicObject[69], 0, 19595, "lsappartments1", "ceilingtiles3-128x128", 0x00000000);
    g_DynamicObject[70] = CreateObject(19465, -1581.0229, -2554.3117, -4.4703, 0.0000, 0.0000, 120.8999); //doorway
    SetObjectMaterial(g_DynamicObject[70], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[71] = CreateObject(19464, -1568.1396, -2568.6110, -4.4800, 0.0000, 0.0000, -148.8997); //wall3fix
    SetObjectMaterial(g_DynamicObject[71], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[72] = CreateObject(19377, -1579.8857, -2559.0805, -7.0633, 0.0000, 270.0000, 31.0000); //big floor
    SetObjectMaterial(g_DynamicObject[72], 0, 14537, "pdomebar", "club_floor2_sfwTEST", 0x00000000);
    g_DynamicObject[73] = CreateObject(19377, -1574.9256, -2567.3364, -7.0633, 0.0000, 270.0000, 31.0000); //big floor
    SetObjectMaterial(g_DynamicObject[73], 0, 14537, "pdomebar", "club_floor2_sfwTEST", 0x00000000);
    g_DynamicObject[74] = CreateObject(19377, -1588.8675, -2564.4763, -3.0000, 0.0000, 270.0000, 31.0000); //big ceiling
    SetObjectMaterial(g_DynamicObject[74], 0, 19595, "lsappartments1", "ceilingtiles3-128x128", 0x00000000);
    g_DynamicObject[75] = CreateObject(19377, -1574.9300, -2567.3278, -3.0000, 0.0000, 270.0000, 31.0000); //big ceiling
    SetObjectMaterial(g_DynamicObject[75], 0, 19595, "lsappartments1", "ceilingtiles3-128x128", 0x00000000);
    g_DynamicObject[76] = CreateObject(19377, -1583.9084, -2572.7277, -3.0000, 0.0000, 270.0000, 31.0000); //big ceiling
    SetObjectMaterial(g_DynamicObject[76], 0, 19595, "lsappartments1", "ceilingtiles3-128x128", 0x00000000);
    g_DynamicObject[77] = CreateObject(19465, -1580.6052, -2564.0322, 30.3495, 0.0000, 0.0000, -149.0997); //doorway
    SetObjectMaterial(g_DynamicObject[77], 0, 16640, "a51", "concretemanky", 0x00000000);
    g_DynamicObject[78] = CreateObject(19362, -1577.0434, -2558.8728, 23.7082, 0.0000, 0.0000, 120.8001); //mazarot bg
    SetObjectMaterial(g_DynamicObject[78], 0, 17555, "eastbeach3c_lae2", "gradient128", 0xFFD2691E);
    g_DynamicObject[79] = CreateObject(1886, -1567.4112, -2571.1530, 32.7228, 34.0998, 0.0000, -100.1996); //security cam
    g_DynamicObject[80] = CreateObject(1886, -1571.6496, -2573.4367, 32.7224, 50.4998, 0.0000, -120.5000); //security cam
    g_DynamicObject[81] = CreateObject(2654, -1577.7545, -2565.4411, 30.3738, 0.0000, 0.0000, 119.6996); //CJ_shoe_box
    SetObjectMaterial(g_DynamicObject[81], 0, 2567, "ab", "Box_Texturepage", 0x00000000);
    SetObjectMaterial(g_DynamicObject[81], 1, 5132, "imstuff_las2", "cardbrdirty128", 0x00000000);
    SetObjectMaterial(g_DynamicObject[81], 2, 5132, "imstuff_las2", "cardbrdirty128", 0x00000000);
    g_DynamicObject[82] = CreateObject(1886, -1574.8260, -2558.8901, 32.7052, 38.7998, 0.0000, 0.4997); //security cam
    g_DynamicObject[83] = CreateObject(2291, -1588.4267, -2565.3820, -7.0664, 0.0000, 0.0000, 121.0998); //SWK_SINGLE_1
    SetObjectMaterial(g_DynamicObject[83], 0, 9818, "ship_brijsfw", "blchr_seat2b", 0xFFCD853F);
    g_DynamicObject[84] = CreateObject(19464, -1573.0439, -2560.5000, -4.4800, 0.0000, 0.0000, -148.8997); //wall2fix
    SetObjectMaterial(g_DynamicObject[84], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[85] = CreateObject(19464, -1566.4726, -2567.6994, -4.4800, 0.0000, 0.0000, -59.0000); //wall
    SetObjectMaterial(g_DynamicObject[85], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[86] = CreateObject(3502, -1569.2187, -2574.7507, -5.7164, 0.0000, 0.0000, 30.1000); //vgsN_con_tube
    SetObjectMaterial(g_DynamicObject[86], 0, 3411, "ce_railbridge", "rusta256128", 0x00000000);
    g_DynamicObject[87] = CreateObject(19464, -1576.5959, -2573.7805, -4.4800, 0.0000, 0.0000, -59.0000); //wall
    SetObjectMaterial(g_DynamicObject[87], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[88] = CreateObject(19464, -1581.6794, -2576.8337, -4.4800, 0.0000, 0.0000, -59.0000); //wall
    SetObjectMaterial(g_DynamicObject[88], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[89] = CreateObject(19464, -1586.7545, -2579.8837, -4.4800, 0.0000, 0.0000, -59.0000); //wall
    SetObjectMaterial(g_DynamicObject[89], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[90] = CreateObject(19465, -1575.8548, -2568.4453, -4.4703, 0.0000, 0.0000, 30.9999); //doorway
    SetObjectMaterial(g_DynamicObject[90], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[91] = CreateObject(19464, -1572.8022, -2573.5212, -4.4800, 0.0000, 0.0000, -148.9996); //wall
    SetObjectMaterial(g_DynamicObject[91], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[92] = CreateObject(11730, -1578.2458, -2565.6799, 28.1138, 0.0000, 0.0000, -147.8997); //GymLockerOpen1
    g_DynamicObject[93] = CreateObject(2315, -1578.1053, -2565.3444, 27.7604, 0.0000, 0.0000, 31.2000); //locker bench
    SetObjectMaterial(g_DynamicObject[93], 0, 3063, "col_wall1x", "ab_wood1", 0x00000000);
    g_DynamicObject[94] = CreateObject(11729, -1578.8243, -2566.0004, 28.1056, 0.0000, 0.0000, -149.7001); //GymLockerClosed1
    g_DynamicObject[95] = CreateObject(2315, -1578.8061, -2565.7700, 27.7504, 0.0000, 0.0000, 31.2000); //locker bench
    SetObjectMaterial(g_DynamicObject[95], 0, 3063, "col_wall1x", "ab_wood1", 0x00000000);
    g_DynamicObject[96] = CreateObject(2517, -1581.6180, -2563.8718, 27.7868, 0.0000, 0.0000, 30.7999); //CJ_SHOWER1
    g_DynamicObject[97] = CreateObject(2525, -1579.8453, -2566.5029, 27.8248, 0.0000, 0.0000, -58.2999); //CJ_TOILET4
    g_DynamicObject[98] = CreateObject(2518, -1580.6966, -2565.1013, 27.8106, 0.0000, 0.0000, -58.9000); //CJ_B_SINK2
    g_DynamicObject[99] = CreateObject(19475, -1580.0493, -2565.2487, 29.4722, 0.0000, 0.0000, 30.8999); //bath mirror
    SetObjectMaterial(g_DynamicObject[99], 0, 9932, "nitelites", "sfnitewindows", 0x00000000);
    g_DynamicObject[100] = CreateObject(11737, -1581.5201, -2563.8564, 27.8283, 0.0000, 0.0000, 30.8999); //RockstarMat1
    SetObjectMaterial(g_DynamicObject[100], 0, 14788, "ab_sfgymbits01", "ab_rollmat01", 0x00000000);
    g_DynamicObject[101] = CreateObject(2315, -1580.9289, -2562.3000, 27.7404, 0.0000, 0.0000, 31.2000); //locker bench
    SetObjectMaterial(g_DynamicObject[101], 0, 3063, "col_wall1x", "ab_wood1", 0x00000000);
    g_DynamicObject[102] = CreateObject(362, -1578.0841, -2565.8168, 29.5354, 9.2999, 115.6996, 0.0000); //minigun
    g_DynamicObject[103] = CreateObject(11730, -1578.9636, -2560.8315, 28.1138, 0.0000, 0.0000, 32.2999); //GymLockerOpen1
    g_DynamicObject[104] = CreateObject(11729, -1579.5102, -2561.1787, 28.1056, 0.0000, 0.0000, 30.8997); //GymLockerClosed1
    g_DynamicObject[105] = CreateObject(351, -1579.0505, -2560.7360, 29.1674, 7.7999, 101.4998, 35.9000); //shotgspa
    g_DynamicObject[106] = CreateObject(11729, -1580.0688, -2561.5119, 28.1056, 0.0000, 0.0000, 30.8997); //GymLockerClosed1
    g_DynamicObject[107] = CreateObject(11730, -1580.6179, -2561.8447, 28.1138, 0.0000, 0.0000, 30.7999); //GymLockerOpen1
    g_DynamicObject[108] = CreateObject(11729, -1581.1590, -2562.1630, 28.1056, 0.0000, 0.0000, 30.8997); //GymLockerClosed1
    g_DynamicObject[109] = CreateObject(19141, -1579.0831, -2560.9743, 28.3721, -26.6000, -92.2994, -141.3999); //SWATHelmet1
    g_DynamicObject[110] = CreateObject(3070, -1578.8553, -2560.7819, 28.2723, 0.0000, 0.0000, 0.0000); //kmb_goggles
    g_DynamicObject[111] = CreateObject(353, -1580.7264, -2561.7414, 29.6564, 6.9998, 91.1996, 32.1999); //mp5lng
    g_DynamicObject[112] = CreateObject(343, -1580.7340, -2561.8598, 28.4022, 0.0000, 0.0000, 0.0000); //teargas
    g_DynamicObject[113] = CreateObject(343, -1580.7340, -2561.9699, 28.4022, 0.0000, 0.0000, 100.5998); //teargas
    g_DynamicObject[114] = CreateObject(19472, -1580.5426, -2561.7226, 28.3523, 0.0000, 0.0000, -123.0998); //gasmask01
    g_DynamicObject[115] = CreateObject(18725, -1576.2092, -2708.8574, 0.0507, 0.0000, 0.0000, 0.0000); //smoke30lit
    g_DynamicObject[116] = CreateObject(19465, -1571.5340, -2570.7336, -4.4703, 0.0000, 0.0000, 120.8999); //doorway
    SetObjectMaterial(g_DynamicObject[116], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[117] = CreateObject(11707, -1581.3846, -2566.5949, 28.8257, 0.0000, 0.0000, 122.3000); //TowelRack1
    SetObjectMaterial(g_DynamicObject[117], 3, 18901, "matclothes", "beretblk", 0x00000000);
    g_DynamicObject[118] = CreateObject(19475, -1602.3298, -2720.2917, 4.2048, 0.0000, 0.0000, 95.8999); //radioactive sub
    SetObjectMaterial(g_DynamicObject[118], 0, 19962, "samproadsigns", "radiation", 0x00000000);
    g_DynamicObject[119] = CreateObject(19465, -1576.5051, -2554.7473, 12.9195, 0.0000, 0.0000, -149.0997); //doorway
    SetObjectMaterial(g_DynamicObject[119], 0, 18646, "matcolours", "orange", 0x00000000);
    g_DynamicObject[120] = CreateObject(19464, -1586.0776, -2557.3522, -4.4800, 0.0000, 0.0000, -59.0000); //wall
    SetObjectMaterial(g_DynamicObject[120], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[121] = CreateObject(19464, -1591.1350, -2560.3916, -4.4800, 0.0000, 0.0000, -59.0000); //wall
    SetObjectMaterial(g_DynamicObject[121], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[122] = CreateObject(19465, -1581.2800, -2565.3833, -4.4703, 0.0000, 0.0000, 120.8999); //doorway
    SetObjectMaterial(g_DynamicObject[122], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[123] = CreateObject(2985, -1590.6593, -2568.8666, -6.9977, 0.0000, 0.0000, -58.6999); //minigun_base
    SetObjectMaterial(g_DynamicObject[123], 0, 16322, "a51_stores", "metalic128", 0xFF696969);
    SetObjectMaterial(g_DynamicObject[123], 1, -1, "none", "none", 0x00FFFFFF);
    SetObjectMaterial(g_DynamicObject[123], 2, 16322, "a51_stores", "metalic128", 0xFF696969);
    g_DynamicObject[124] = CreateObject(19464, -1584.4747, -2567.2929, -4.4800, 0.0000, 0.0000, -59.0000); //wall
    SetObjectMaterial(g_DynamicObject[124], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[125] = CreateObject(19464, -1581.2458, -2578.5974, -4.4800, 0.0000, 0.0000, -148.9996); //wall
    SetObjectMaterial(g_DynamicObject[125], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[126] = CreateObject(19464, -1592.4444, -2571.4958, -4.4800, 0.0000, 0.0000, -148.9996); //wall
    SetObjectMaterial(g_DynamicObject[126], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[127] = CreateObject(19465, -1590.3620, -2563.3610, -4.4703, 0.0000, 0.0000, 30.9999); //doorway
    SetObjectMaterial(g_DynamicObject[127], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[128] = CreateObject(19464, -1587.3281, -2568.4348, -4.4800, 0.0000, 0.0000, -148.9996); //wall
    SetObjectMaterial(g_DynamicObject[128], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[129] = CreateObject(19465, -1584.2955, -2573.5207, -4.4703, 0.0000, 0.0000, 30.9999); //doorway
    SetObjectMaterial(g_DynamicObject[129], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[130] = CreateObject(19377, -1597.8332, -2569.8847, -7.0633, 0.0000, 270.0000, 31.0000); //big floor
    SetObjectMaterial(g_DynamicObject[130], 0, 14537, "pdomebar", "club_floor2_sfwTEST", 0x00000000);
    g_DynamicObject[131] = CreateObject(19377, -1592.8884, -2578.1384, -7.0633, 0.0000, 270.0000, 31.0000); //big floor
    SetObjectMaterial(g_DynamicObject[131], 0, 14537, "pdomebar", "club_floor2_sfwTEST", 0x00000000);
    g_DynamicObject[132] = CreateObject(19464, -1589.4104, -2576.5454, -4.4800, 0.0000, 0.0000, -148.9996); //wall
    SetObjectMaterial(g_DynamicObject[132], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[133] = CreateObject(19464, -1586.3647, -2581.6108, -4.4800, 0.0000, 0.0000, -148.9996); //wall
    SetObjectMaterial(g_DynamicObject[133], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[134] = CreateObject(19464, -1591.8205, -2582.9306, -4.4800, 0.0000, 0.0000, -59.0000); //wall
    SetObjectMaterial(g_DynamicObject[134], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[135] = CreateObject(19464, -1596.8957, -2585.9797, -4.4800, 0.0000, 0.0000, -59.0000); //wall
    SetObjectMaterial(g_DynamicObject[135], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[136] = CreateObject(19563, -1585.2624, -2578.5295, -5.3218, 0.0000, 0.0000, 1.6999); //JuiceBox1
    g_DynamicObject[137] = CreateObject(19464, -1597.1241, -2581.0822, -4.4800, 0.0000, 0.0000, -148.9996); //wall
    SetObjectMaterial(g_DynamicObject[137], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[138] = CreateObject(19464, -1600.1722, -2576.0092, -4.4800, 0.0000, 0.0000, -148.9996); //wall
    SetObjectMaterial(g_DynamicObject[138], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[139] = CreateObject(19464, -1602.4945, -2569.8745, -4.4800, 0.0000, 0.0000, -148.9996); //wall
    SetObjectMaterial(g_DynamicObject[139], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[140] = CreateObject(19465, -1592.2524, -2566.1354, -4.4703, 0.0000, 0.0000, 120.8999); //doorway
    SetObjectMaterial(g_DynamicObject[140], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[141] = CreateObject(19464, -1596.1781, -2563.4196, -4.4800, 0.0000, 0.0000, -59.0000); //wall
    SetObjectMaterial(g_DynamicObject[141], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[142] = CreateObject(19465, -1595.4798, -2566.4348, -4.4703, 0.0000, 0.0000, 30.9999); //doorway
    SetObjectMaterial(g_DynamicObject[142], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[143] = CreateObject(19464, -1602.4962, -2568.8791, -4.4800, 0.0000, 0.0000, -59.0000); //wall
    SetObjectMaterial(g_DynamicObject[143], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[144] = CreateObject(19464, -1603.2269, -2570.9252, -4.4800, 0.0000, 0.0000, -148.9996); //wall
    SetObjectMaterial(g_DynamicObject[144], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[145] = CreateObject(19377, -1597.8542, -2569.8776, -3.0000, 0.0000, 270.0000, 31.0000); //big ceiling
    SetObjectMaterial(g_DynamicObject[145], 0, 19595, "lsappartments1", "ceilingtiles3-128x128", 0x00000000);
    g_DynamicObject[146] = CreateObject(19377, -1592.8927, -2578.1359, -3.0000, 0.0000, 270.0000, 31.0000); //big ceiling
    SetObjectMaterial(g_DynamicObject[146], 0, 19595, "lsappartments1", "ceilingtiles3-128x128", 0x00000000);
    g_DynamicObject[147] = CreateObject(19464, -1588.0400, -2573.2011, -4.4800, 0.0000, 0.0000, -59.0000); //wall
    SetObjectMaterial(g_DynamicObject[147], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[148] = CreateObject(19430, -1571.1035, -2571.4958, -7.2244, 13.5999, -90.1996, 31.7999); //wall070
    SetObjectMaterial(g_DynamicObject[148], 0, 16322, "a51_stores", "metpat64chev_128", 0x00000000);
    g_DynamicObject[149] = CreateObject(3502, -1564.8216, -2582.3395, -5.7164, 0.0000, 0.0000, 30.1000); //vgsN_con_tube
    SetObjectMaterial(g_DynamicObject[149], 0, 3411, "ce_railbridge", "rusta256128", 0x00000000);
    g_DynamicObject[150] = CreateObject(3502, -1560.4281, -2589.9196, -5.7164, 0.0000, 0.0000, 30.1000); //vgsN_con_tube
    SetObjectMaterial(g_DynamicObject[150], 0, 3411, "ce_railbridge", "rusta256128", 0x00000000);
    g_DynamicObject[151] = CreateObject(3502, -1556.0299, -2597.5039, -5.7164, 0.0000, 0.0000, 30.1000); //vgsN_con_tube
    SetObjectMaterial(g_DynamicObject[151], 0, 3411, "ce_railbridge", "rusta256128", 0x00000000);
    g_DynamicObject[152] = CreateObject(3502, -1551.6318, -2605.0915, -5.7164, 0.0000, 0.0000, 30.1000); //vgsN_con_tube
    SetObjectMaterial(g_DynamicObject[152], 0, 3411, "ce_railbridge", "rusta256128", 0x00000000);
    g_DynamicObject[153] = CreateObject(3502, -1547.2384, -2612.6689, -5.7164, 0.0000, 0.0000, 30.1000); //vgsN_con_tube
    SetObjectMaterial(g_DynamicObject[153], 0, 3411, "ce_railbridge", "rusta256128", 0x00000000);
    g_DynamicObject[154] = CreateObject(3502, -1542.8353, -2620.2590, -5.7164, 0.0000, 0.0000, 30.1000); //vgsN_con_tube
    SetObjectMaterial(g_DynamicObject[154], 0, 3411, "ce_railbridge", "rusta256128", 0x00000000);
    g_DynamicObject[155] = CreateObject(3502, -1538.4331, -2627.8510, -5.7164, 0.0000, 0.0000, 30.1000); //vgsN_con_tube
    SetObjectMaterial(g_DynamicObject[155], 0, 3411, "ce_railbridge", "rusta256128", 0x00000000);
    g_DynamicObject[156] = CreateObject(3502, -1534.0373, -2635.4350, -5.7164, 0.0000, 0.0000, 30.1000); //vgsN_con_tube
    SetObjectMaterial(g_DynamicObject[156], 0, 3411, "ce_railbridge", "rusta256128", 0x00000000);
    g_DynamicObject[157] = CreateObject(3502, -1529.6446, -2643.0141, -5.7164, 0.0000, 0.0000, 30.1000); //vgsN_con_tube
    SetObjectMaterial(g_DynamicObject[157], 0, 3411, "ce_railbridge", "rusta256128", 0x00000000);
    g_DynamicObject[158] = CreateObject(3502, -1525.2540, -2650.5878, -5.7164, 0.0000, 0.0000, 30.1000); //vgsN_con_tube
    SetObjectMaterial(g_DynamicObject[158], 0, 3411, "ce_railbridge", "rusta256128", 0x00000000);
    g_DynamicObject[159] = CreateObject(3502, -1520.8668, -2658.1582, -5.7164, 0.0000, 0.0000, 30.1000); //vgsN_con_tube
    SetObjectMaterial(g_DynamicObject[159], 0, 3411, "ce_railbridge", "rusta256128", 0x00000000);
    g_DynamicObject[160] = CreateObject(1462, -1514.4195, -2664.5349, -7.2045, 0.0000, 0.0000, -57.5000); //DYN_woodpile
    g_DynamicObject[161] = CreateObject(19377, -1514.2679, -2664.9238, -2.2634, 0.0000, 270.0000, 30.1998); //big ceiling
    SetObjectMaterial(g_DynamicObject[161], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[162] = CreateObject(19465, -1518.5753, -2661.9892, -4.7501, 0.0000, 0.0000, 120.2994); //doorway
    SetObjectMaterial(g_DynamicObject[162], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[163] = CreateObject(19465, -1519.6230, -2665.9643, -4.7402, 0.0000, 0.0000, 29.6998); //doorway
    SetObjectMaterial(g_DynamicObject[163], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[164] = CreateObject(19377, -1514.2679, -2664.9238, -7.3035, 0.0000, 270.0000, 30.1998); //big ceiling
    SetObjectMaterial(g_DynamicObject[164], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[165] = CreateObject(19465, -1557.6728, -2688.4062, -4.7402, 0.0000, 0.0000, 29.9997); //doorway
    SetObjectMaterial(g_DynamicObject[165], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[166] = CreateObject(3502, -1523.6269, -2668.3637, -5.7663, 0.0000, 0.0000, -59.5998); //vgsN_con_tube
    SetObjectMaterial(g_DynamicObject[166], 0, 3411, "ce_railbridge", "rusta256128", 0x00000000);
    g_DynamicObject[167] = CreateObject(3502, -1531.1855, -2672.8002, -5.7663, 0.0000, 0.0000, -59.5998); //vgsN_con_tube
    SetObjectMaterial(g_DynamicObject[167], 0, 3411, "ce_railbridge", "rusta256128", 0x00000000);
    g_DynamicObject[168] = CreateObject(3502, -1538.7429, -2677.2319, -5.7663, 0.0000, 0.0000, -59.5998); //vgsN_con_tube
    SetObjectMaterial(g_DynamicObject[168], 0, 3411, "ce_railbridge", "rusta256128", 0x00000000);
    g_DynamicObject[169] = CreateObject(3502, -1546.3005, -2681.6657, -5.7663, 0.0000, 0.0000, -59.5998); //vgsN_con_tube
    SetObjectMaterial(g_DynamicObject[169], 0, 3411, "ce_railbridge", "rusta256128", 0x00000000);
    g_DynamicObject[170] = CreateObject(3502, -1553.8562, -2686.0976, -5.7663, 0.0000, 0.0000, -59.5998); //vgsN_con_tube
    SetObjectMaterial(g_DynamicObject[170], 0, 3411, "ce_railbridge", "rusta256128", 0x00000000);
    g_DynamicObject[171] = CreateObject(19377, -1563.0155, -2689.6760, -2.5060, 270.0000, 270.0000, 30.1998); //big ceiling
    SetObjectMaterial(g_DynamicObject[171], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[172] = CreateObject(19377, -1571.9914, -2696.7478, 4.9882, 0.0000, -55.1999, 30.1998); //big ceiling
    SetObjectMaterial(g_DynamicObject[172], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[173] = CreateObject(19377, -1571.1695, -2696.3535, 6.1465, 0.0000, 270.0000, 30.1998); //big ceiling
    SetObjectMaterial(g_DynamicObject[173], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[174] = CreateObject(19377, -1561.4908, -2692.2963, -2.5060, 270.0000, 270.0000, 30.1998); //big ceiling
    SetObjectMaterial(g_DynamicObject[174], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[175] = CreateObject(14877, -1564.0715, -2691.9934, -5.1440, 0.0000, 0.0000, -149.7998); //exit stairs
    SetObjectMaterial(g_DynamicObject[175], 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
    SetObjectMaterial(g_DynamicObject[175], 1, 4595, "crparkgm_lan2", "sl_cparkbarrier1", 0x00000000);
    g_DynamicObject[176] = CreateObject(19377, -1562.2176, -2691.0659, -7.3035, 0.0000, 270.0000, 30.1998); //big ceiling
    SetObjectMaterial(g_DynamicObject[176], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[177] = CreateObject(14877, -1572.6196, -2696.9677, -1.0340, 0.0000, 0.0000, -149.7998); //exit stairs
    SetObjectMaterial(g_DynamicObject[177], 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
    SetObjectMaterial(g_DynamicObject[177], 1, 4595, "crparkgm_lan2", "sl_cparkbarrier1", 0x00000000);
    g_DynamicObject[178] = CreateObject(19377, -1561.3089, -2690.5310, 0.7098, 0.0000, -55.1999, 30.1998); //big ceiling
    SetObjectMaterial(g_DynamicObject[178], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[179] = CreateObject(19377, -1572.0378, -2694.9289, 1.7137, 270.0000, 270.0000, 30.1998); //big ceiling
    SetObjectMaterial(g_DynamicObject[179], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[180] = CreateObject(19377, -1563.7972, -2691.9816, 2.0264, 0.0000, 270.0000, 30.1998); //big ceiling
    SetObjectMaterial(g_DynamicObject[180], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[181] = CreateObject(2708, -1590.2468, -2575.9399, -7.2290, 0.0000, 0.0000, -59.0000); //ZIP_SHELF1
    SetObjectMaterial(g_DynamicObject[181], 1, 1983, "new_cabinets2", "shop_shelfnu3", 0x00000000);
    g_DynamicObject[182] = CreateObject(19377, -1570.5145, -2697.5471, 1.7137, 270.0000, 270.0000, 30.1998); //big ceiling
    SetObjectMaterial(g_DynamicObject[182], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[183] = CreateObject(19465, -1575.7347, -2698.8188, 3.5497, 0.0000, 0.0000, 29.9997); //doorway
    SetObjectMaterial(g_DynamicObject[183], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[184] = CreateObject(19377, -1579.1518, -2701.5139, 0.9362, 0.0000, 270.0000, 90.0000); //dock floor
    SetObjectMaterial(g_DynamicObject[184], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[185] = CreateObject(19464, -1598.1782, -2579.3217, -4.4800, 0.0000, 0.0000, -59.0000); //wall
    SetObjectMaterial(g_DynamicObject[185], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[186] = CreateObject(19465, -1514.5157, -2663.0493, -4.7402, 0.0000, 0.0000, 29.6998); //doorway
    SetObjectMaterial(g_DynamicObject[186], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[187] = CreateObject(19465, -1593.1236, -2576.2756, -4.4703, 0.0000, 0.0000, 120.8999); //doorway
    SetObjectMaterial(g_DynamicObject[187], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[188] = CreateObject(19563, -1584.9864, -2578.3627, -5.3218, 0.0000, 0.0000, 76.2994); //JuiceBox1
    g_DynamicObject[189] = CreateObject(2394, -1588.7906, -2578.6340, -5.4895, 0.0000, 0.0000, -59.0000); //CJ_CLOTHES_STEP_1
    g_DynamicObject[190] = CreateObject(19465, -1598.7706, -2569.1855, -4.4703, 0.0000, 0.0000, 30.9999); //doorway
    SetObjectMaterial(g_DynamicObject[190], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[191] = CreateObject(19465, -1595.7213, -2574.2607, -4.4703, 0.0000, 0.0000, 30.9999); //doorway
    SetObjectMaterial(g_DynamicObject[191], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[192] = CreateObject(19464, -1601.8031, -2564.1110, -4.4800, 0.0000, 0.0000, -148.9996); //wall
    SetObjectMaterial(g_DynamicObject[192], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[193] = CreateObject(19464, -1600.4906, -2572.2756, -4.4800, 0.0000, 0.0000, -59.0000); //wall
    SetObjectMaterial(g_DynamicObject[193], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[194] = CreateObject(19377, -1583.8934, -2701.5319, 5.6763, 270.0000, 270.0000, 90.0000); //big ceiling
    SetObjectMaterial(g_DynamicObject[194], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[195] = CreateObject(19377, -1574.3537, -2706.5024, 5.6763, 270.0000, 270.0000, 90.0000); //dock wall
    SetObjectMaterial(g_DynamicObject[195], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[196] = CreateObject(19377, -1582.4592, -2696.3288, 5.6763, 270.0000, 270.0000, 0.0000); //dock ceiling
    SetObjectMaterial(g_DynamicObject[196], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[197] = CreateObject(19377, -1579.1518, -2701.5139, 6.1662, 0.0000, 270.0000, 90.0000); //dock ceiling
    SetObjectMaterial(g_DynamicObject[197], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[198] = CreateObject(9958, -1574.9814, -2719.7524, 3.0641, 0.0000, 0.0000, -89.8998); //submarine
    g_DynamicObject[199] = CreateObject(19377, -1579.1345, -2706.5261, 0.9664, 0.0000, 270.0000, 90.0000); //big ceiling
    SetObjectMaterial(g_DynamicObject[199], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[200] = CreateObject(19377, -1583.9161, -2706.4948, 5.6763, 270.0000, 270.0000, 90.0000); //dock wall
    SetObjectMaterial(g_DynamicObject[200], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[201] = CreateObject(19377, -1579.1341, -2706.5041, 6.1862, 0.0000, 270.0000, 90.0000); //dock ceiling
    SetObjectMaterial(g_DynamicObject[201], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[202] = CreateObject(19465, -1515.6739, -2666.9526, -4.7501, 0.0000, 0.0000, 120.2994); //doorway
    SetObjectMaterial(g_DynamicObject[202], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[203] = CreateObject(19853, -1640.9731, -2723.3239, 16.6219, 0.0000, 90.0000, 0.0000); //MIHouse1Land5
    SetObjectMaterial(g_DynamicObject[203], 0, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[204] = CreateObject(19853, -1610.3009, -2734.5932, -14.5677, 0.0000, 90.0000, 90.0000); //MIHouse1Land5
    SetObjectMaterial(g_DynamicObject[204], 0, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[205] = CreateObject(19853, -1610.3309, -2734.5932, 16.6520, 0.0000, 90.0000, 90.0000); //MIHouse1Land5
    SetObjectMaterial(g_DynamicObject[205], 0, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[206] = CreateObject(19377, -1569.1805, -2711.7165, 1.3062, 270.0000, 270.0000, 0.0000); //dock ceiling
    SetObjectMaterial(g_DynamicObject[206], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[207] = CreateObject(19853, -1547.8315, -2734.5932, -14.5677, 0.0000, 90.0000, 90.0000); //MIHouse1Land5
    SetObjectMaterial(g_DynamicObject[207], 0, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[208] = CreateObject(10841, -1640.8780, -2723.1818, -12.6422, 0.0000, 0.0000, 270.0000); //drydock1_SFSe01
    g_DynamicObject[209] = CreateObject(19853, -1547.8409, -2722.4250, -30.1578, 0.0000, 0.0000, 90.0000); //MIHouse1Land5
    SetObjectMaterial(g_DynamicObject[209], 0, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[210] = CreateObject(19853, -1640.9731, -2723.3239, -14.5677, 0.0000, 90.0000, 0.0000); //MIHouse1Land5
    SetObjectMaterial(g_DynamicObject[210], 0, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[211] = CreateObject(19377, -1589.0826, -2711.7165, 1.3062, 270.0000, 270.0000, 0.0000); //dock ceiling
    SetObjectMaterial(g_DynamicObject[211], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[212] = CreateObject(19853, -1579.2956, -2711.7609, 21.7520, 0.0000, 90.0000, 270.0000); //MIHouse1Land5
    SetObjectMaterial(g_DynamicObject[212], 0, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[213] = CreateObject(19853, -1547.8094, -2711.8110, -14.5677, 0.0000, 90.0000, 270.0000); //MIHouse1Land5
    SetObjectMaterial(g_DynamicObject[213], 0, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[214] = CreateObject(19853, -1610.3011, -2722.8090, 32.2121, 0.0000, 180.0000, 90.0000); //MIHouse1Land5
    SetObjectMaterial(g_DynamicObject[214], 0, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[215] = CreateObject(19853, -1520.3531, -2723.3239, -14.5677, 0.0000, 90.0000, 180.0000); //MIHouse1Land5
    SetObjectMaterial(g_DynamicObject[215], 0, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[216] = CreateObject(19853, -1543.1488, -2711.8110, 16.6821, 0.0000, 90.0000, 270.0000); //MIHouse1Land5
    SetObjectMaterial(g_DynamicObject[216], 0, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[217] = CreateObject(19853, -1547.8315, -2734.5932, 16.6520, 0.0000, 90.0000, 90.0000); //MIHouse1Land5
    SetObjectMaterial(g_DynamicObject[217], 0, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[218] = CreateObject(11496, -1579.1894, -2711.0944, 0.8524, 0.0000, 0.0000, 270.0000); //des_wjetty
    SetObjectMaterial(g_DynamicObject[218], 0, 3063, "col_wall1x", "ab_wood1", 0x00000000);
    SetObjectMaterial(g_DynamicObject[218], 1, 3063, "col_wall1x", "ab_wood1", 0x00000000);
    SetObjectMaterial(g_DynamicObject[218], 2, 615, "gta_tree_boak", "sm_redwood_bark", 0x00000000);
    g_DynamicObject[219] = CreateObject(19377, -1578.8415, -2711.6564, 10.8662, 270.0000, 270.0000, 0.0000); //dock ceiling
    SetObjectMaterial(g_DynamicObject[219], 0, 17562, "coast_apts", "Concrete_rough_256", 0x00000000);
    g_DynamicObject[220] = CreateObject(19853, -1504.8492, -2907.3398, 51.3418, 0.0000, 180.0000, 90.0000); //MIHouse1Land5
    SetObjectMaterial(g_DynamicObject[220], 0, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[221] = CreateObject(11496, -1595.1905, -2711.0944, 0.8524, 0.0000, 0.0000, 270.0000); //des_wjetty
    SetObjectMaterial(g_DynamicObject[221], 0, 3063, "col_wall1x", "ab_wood1", 0x00000000);
    SetObjectMaterial(g_DynamicObject[221], 1, 3063, "col_wall1x", "ab_wood1", 0x00000000);
    SetObjectMaterial(g_DynamicObject[221], 2, 615, "gta_tree_boak", "sm_redwood_bark", 0x00000000);
    g_DynamicObject[222] = CreateObject(19853, -1615.1677, -2711.8110, 16.6821, 0.0000, 90.0000, 270.0000); //MIHouse1Land5
    SetObjectMaterial(g_DynamicObject[222], 0, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[223] = CreateObject(19853, -1610.3309, -2722.4250, -30.1578, 0.0000, 0.0000, 90.0000); //MIHouse1Land5
    SetObjectMaterial(g_DynamicObject[223], 0, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[224] = CreateObject(19853, -1520.3531, -2723.3239, 16.6620, 0.0000, 90.0000, 180.0000); //MIHouse1Land5
    SetObjectMaterial(g_DynamicObject[224], 0, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[225] = CreateObject(19853, -1547.8393, -2722.8090, 32.2121, 0.0000, 180.0000, 90.0000); //MIHouse1Land5
    SetObjectMaterial(g_DynamicObject[225], 0, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[226] = CreateObject(19853, -1610.3009, -2711.8110, -14.5677, 0.0000, 90.0000, 270.0000); //MIHouse1Land5
    SetObjectMaterial(g_DynamicObject[226], 0, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[227] = CreateObject(10841, -1640.8780, -2723.1818, -22.2623, 0.0000, 0.0000, 270.0000); //drydock1_SFSe01
    g_DynamicObject[228] = CreateObject(11496, -1563.1999, -2711.0944, 0.8524, 0.0000, 0.0000, 270.0000); //des_wjetty
    SetObjectMaterial(g_DynamicObject[228], 0, 3063, "col_wall1x", "ab_wood1", 0x00000000);
    SetObjectMaterial(g_DynamicObject[228], 1, 3063, "col_wall1x", "ab_wood1", 0x00000000);
    SetObjectMaterial(g_DynamicObject[228], 2, 615, "gta_tree_boak", "sm_redwood_bark", 0x00000000);
    g_DynamicObject[229] = CreateObject(18228, -1566.6579, -2727.0844, 35.2345, -178.7998, 0.0000, -101.5000); //cunt_rockgp2_21
    SetObjectMaterial(g_DynamicObject[229], 0, 896, "underwater", "greyrockbig", 0x00000000);
    SetObjectMaterial(g_DynamicObject[229], 1, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[230] = CreateObject(18228, -1517.4541, -2724.0827, 34.9846, -178.7998, 0.0000, 41.8997); //cunt_rockgp2_21
    SetObjectMaterial(g_DynamicObject[230], 0, 896, "underwater", "greyrockbig", 0x00000000);
    SetObjectMaterial(g_DynamicObject[230], 1, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[231] = CreateObject(18228, -1583.5814, -2728.9965, 35.7089, -178.7998, 0.0000, 8.1997); //cunt_rockgp2_21
    SetObjectMaterial(g_DynamicObject[231], 0, 896, "underwater", "greyrockbig", 0x00000000);
    SetObjectMaterial(g_DynamicObject[231], 1, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[232] = CreateObject(18228, -1610.9774, -2731.0205, 35.7868, -178.7998, 0.0000, 0.1999); //cunt_rockgp2_21
    SetObjectMaterial(g_DynamicObject[232], 0, 896, "underwater", "greyrockbig", 0x00000000);
    SetObjectMaterial(g_DynamicObject[232], 1, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[233] = CreateObject(18228, -1631.8426, -2724.9404, 35.6511, -178.7998, 0.0000, 158.1999); //cunt_rockgp2_21
    SetObjectMaterial(g_DynamicObject[233], 0, 896, "underwater", "greyrockbig", 0x00000000);
    SetObjectMaterial(g_DynamicObject[233], 1, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[234] = CreateObject(3502, -1510.5510, -2660.6948, -5.4461, 0.0000, 0.0000, -59.5998); //vgsN_con_tube
    SetObjectMaterial(g_DynamicObject[234], 0, 3411, "ce_railbridge", "rusta256128", 0x00000000);
    g_DynamicObject[235] = CreateObject(3502, -1503.1490, -2656.3483, -4.9288, 7.2999, 0.0000, -59.5998); //vgsN_con_tube
    SetObjectMaterial(g_DynamicObject[235], 0, 3411, "ce_railbridge", "rusta256128", 0x00000000);
    g_DynamicObject[236] = CreateObject(18706, -1514.7757, -2668.4587, -5.1048, 0.0000, 0.0000, 0.0000); //prt_blood
    g_DynamicObject[237] = CreateObject(3502, -1496.0572, -2652.1821, -3.1363, 17.0000, 0.0000, -59.5998); //vgsN_con_tube
    SetObjectMaterial(g_DynamicObject[237], 0, 3411, "ce_railbridge", "rusta256128", 0x00000000);
    g_DynamicObject[238] = CreateObject(3502, -1489.2424, -2648.1892, -0.1207, 25.2000, 0.0000, -59.5998); //vgsN_con_tube
    SetObjectMaterial(g_DynamicObject[238], 0, 3411, "ce_railbridge", "rusta256128", 0x00000000);
    g_DynamicObject[239] = CreateObject(974, -1515.4094, -2661.5969, -5.9470, 0.0000, 0.0000, -60.2999); //tall_fence
    SetObjectMaterial(g_DynamicObject[239], 1, 18787, "matramps", "metalflooring", 0x00000000);
    g_DynamicObject[240] = CreateObject(3502, -1513.3979, -2671.0410, -5.6563, 0.0000, 0.0000, 30.1000); //vgsN_con_tube
    SetObjectMaterial(g_DynamicObject[240], 0, 3411, "ce_railbridge", "rusta256128", 0x00000000);
    g_DynamicObject[241] = CreateObject(3502, -1509.0954, -2678.4663, -6.4744, 9.8999, 0.0000, 30.1000); //vgsN_con_tube
    SetObjectMaterial(g_DynamicObject[241], 0, 3411, "ce_railbridge", "rusta256128", 0x00000000);
    g_DynamicObject[242] = CreateObject(3502, -1505.0527, -2685.4414, -8.5452, 17.7999, 0.0000, 30.1000); //vgsN_con_tube
    SetObjectMaterial(g_DynamicObject[242], 0, 3411, "ce_railbridge", "rusta256128", 0x00000000);
    g_DynamicObject[243] = CreateObject(3502, -1501.2264, -2692.0419, -11.9350, 28.3999, 0.0000, 30.1000); //vgsN_con_tube
    SetObjectMaterial(g_DynamicObject[243], 0, 3411, "ce_railbridge", "rusta256128", 0x00000000);
    g_DynamicObject[244] = CreateObject(974, -1514.1180, -2666.0859, -5.9470, 0.0000, 0.0000, -149.8999); //tall_fence
    SetObjectMaterial(g_DynamicObject[244], 1, 18787, "matramps", "metalflooring", 0x00000000);
    g_DynamicObject[245] = CreateObject(19078, -1512.1545, -2661.4741, -6.8625, 0.0000, -93.8000, 125.9999); //TheParrot1
    g_DynamicObject[246] = CreateObject(849, -1513.0871, -2662.2922, -6.9169, 0.0000, 0.0000, 34.0000); //CJ_urb_rub_3
    g_DynamicObject[247] = CreateObject(853, -1515.0262, -2668.0585, -6.8017, 0.0000, 0.0000, 0.0000); //CJ_urb_rub_5
    g_DynamicObject[248] = CreateObject(2965, -1576.7889, -2554.9316, 6.3582, 180.0000, 270.0000, -149.0997); //mazarot logo
    SetObjectMaterial(g_DynamicObject[248], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[249] = CreateObject(14596, -1583.3153, -2554.4396, 3.7174, 0.0000, 0.0000, -149.2001); //stairway
    SetObjectMaterial(g_DynamicObject[249], 0, 16640, "a51", "metpat64", 0x00000000);
    SetObjectMaterial(g_DynamicObject[249], 1, 18646, "matcolours", "grey-70-percent", 0x00000000);
    SetObjectMaterial(g_DynamicObject[249], 2, 18646, "matcolours", "orange", 0x00000000);
    SetObjectMaterial(g_DynamicObject[249], 4, 18646, "matcolours", "grey-80-percent", 0x00000000);
    SetObjectMaterial(g_DynamicObject[249], 6, 18646, "matcolours", "grey-10-percent", 0x00000000);
    SetObjectMaterial(g_DynamicObject[249], 8, 7247, "vgncoast", "metalwheel2_128", 0x00000000);
    g_DynamicObject[250] = CreateObject(19477, -1577.3509, -2558.3581, 17.5482, 0.0000, 0.0000, 120.8001); //mazarot text
    SetDynamicObjectMaterialText(g_DynamicObject[250], 0, "Mazarot Incorporated", OBJECT_MATERIAL_SIZE_512x256, "Courier New", 30, 1, 0xFF000000, 0x00000000, 1);
    g_DynamicObject[251] = CreateObject(19362, -1577.2999, -2558.4440, 17.9381, 0.0000, 0.0000, 120.8001); //mazarot bg
    SetObjectMaterial(g_DynamicObject[251], 0, 17555, "eastbeach3c_lae2", "gradient128", 0xFFD2691E);
    g_DynamicObject[252] = CreateObject(19325, -1577.8614, -2557.8154, 17.5137, 0.0000, 0.0000, -59.2000); //mazarot window
    SetObjectMaterial(g_DynamicObject[252], 0, 18646, "matcolours", "grey-90-percent", 0x96FFFFFF);
    g_DynamicObject[253] = CreateObject(19477, -1577.2419, -2555.2033, 0.1181, 0.0000, 0.0000, -149.0997); //mazarot text
    SetDynamicObjectMaterialText(g_DynamicObject[253], 0, "Mazarot Incorporated", OBJECT_MATERIAL_SIZE_512x256, "Courier New", 30, 1, 0xFF000000, 0x00000000, 1);
    g_DynamicObject[254] = CreateObject(19325, -1577.5566, -2555.3784, 6.0836, 0.0000, 0.0000, 30.8001); //mazarot window
    SetObjectMaterial(g_DynamicObject[254], 0, 18646, "matcolours", "grey-90-percent", 0x96FFFFFF);
    g_DynamicObject[255] = CreateObject(19475, -1576.8115, -2554.9331, 6.3182, 0.0000, 0.0000, -149.0997); //mazarot eye
    SetDynamicObjectMaterialText(g_DynamicObject[255], 0, "N", OBJECT_MATERIAL_SIZE_256x256, "Webdings", 150, 1, 0xFF000000, 0x00000000, 1);
    g_DynamicObject[256] = CreateObject(19325, -1577.9167, -2555.5937, 0.1835, 0.0000, 0.0000, 30.8001); //mazarot window
    SetObjectMaterial(g_DynamicObject[256], 0, 18646, "matcolours", "grey-90-percent", 0x96FFFFFF);
    g_DynamicObject[257] = CreateObject(363, -1577.9228, -2564.8115, 28.5645, 0.0000, 0.0000, -156.6000); //satchel
    g_DynamicObject[258] = CreateObject(19815, -1577.9863, -2716.6931, 1.0355, 270.0000, 0.0000, 270.0000); //ToolBoard1
    SetObjectMaterial(g_DynamicObject[258], 0, 18773, "tunnelsections", "metalflooring44-2", 0x00000000);
    g_DynamicObject[259] = CreateObject(19362, -1576.7392, -2554.8786, 6.3582, 0.0000, 0.0000, -149.0997); //mazarot bg
    SetObjectMaterial(g_DynamicObject[259], 0, 17555, "eastbeach3c_lae2", "gradient128", 0xFFD2691E);
    g_DynamicObject[260] = CreateObject(19815, -1583.6462, -2710.1215, 1.5131, -157.6999, 0.0000, 270.0000); //ToolBoard1
    SetObjectMaterial(g_DynamicObject[260], 0, 18773, "tunnelsections", "metalflooring44-2", 0x00000000);
    g_DynamicObject[261] = CreateObject(18644, -1602.6168, -2720.8244, 3.2960, 90.3999, 0.0000, 0.0000); //Screwdriver1
    g_DynamicObject[262] = CreateObject(19921, -1603.3835, -2720.3937, 4.6767, 0.0000, 0.0000, 14.6997); //CutsceneToolBox1
    g_DynamicObject[263] = CreateObject(1428, -1601.7124, -2720.6318, 2.2407, 0.0000, 0.0000, 5.6999); //DYN_LADDER
    g_DynamicObject[264] = CreateObject(19898, -1603.0450, -2721.0852, 3.2825, 0.0000, 0.0000, -164.7998); //OilFloorStain1
    g_DynamicObject[265] = CreateObject(2229, -1582.4775, -2565.9836, -6.9755, 0.0000, 0.0000, -130.3999); //SWANK_SPEAKER
    SetObjectMaterial(g_DynamicObject[265], 0, 2225, "cj_hi_fi2", "CJ_SPEAKER3", 0xFFB22222);
    g_DynamicObject[266] = CreateObject(2965, -1577.2110, -2555.1965, 0.5080, 180.0000, 270.0000, -149.0997); //mazarot logo
    SetObjectMaterial(g_DynamicObject[266], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[267] = CreateObject(19475, -1577.0980, -2558.8005, 23.6683, 0.0000, 0.0000, 120.8001); //mazarot eye
    SetDynamicObjectMaterialText(g_DynamicObject[267], 0, "N", OBJECT_MATERIAL_SIZE_256x256, "Webdings", 150, 1, 0xFF000000, 0x00000000, 1);
    g_DynamicObject[268] = CreateObject(19475, -1589.2885, -2571.0942, -6.3453, 0.0000, 0.0000, -59.2999); //mazarot eye
    SetDynamicObjectMaterialText(g_DynamicObject[268], 0, "N", OBJECT_MATERIAL_SIZE_256x256, "Webdings", 150, 1, 0xFF000000, 0x00000000, 1);
    g_DynamicObject[269] = CreateObject(19089, -1628.9184, -2723.1867, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[269], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[270] = CreateObject(19362, -1577.1562, -2555.1520, 0.5080, 0.0000, 0.0000, -149.0997); //mazarot bg
    SetObjectMaterial(g_DynamicObject[270], 0, 17555, "eastbeach3c_lae2", "gradient128", 0xFFD2691E);
    g_DynamicObject[271] = CreateObject(2965, -1589.2700, -2571.1057, -6.3056, 180.0000, 270.0000, -59.2999); //mazarot logo
    SetObjectMaterial(g_DynamicObject[271], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[272] = CreateObject(19477, -1577.0946, -2558.7868, 23.3183, 0.0000, 0.0000, 120.8001); //mazarot text
    SetDynamicObjectMaterialText(g_DynamicObject[272], 0, "Mazarot Incorporated", OBJECT_MATERIAL_SIZE_512x256, "Courier New", 30, 1, 0xFF000000, 0x00000000, 1);
    g_DynamicObject[273] = CreateObject(19475, -1579.9112, -2557.7011, -4.5673, 0.0000, -0.3003, -150.0000); //mazarot eye
    SetDynamicObjectMaterialText(g_DynamicObject[273], 0, "N", OBJECT_MATERIAL_SIZE_256x256, "Webdings", 150, 1, 0xFF000000, 0x00000000, 1);
    g_DynamicObject[274] = CreateObject(2811, -1601.1750, -2573.3552, -7.0300, 0.0000, 0.0000, 0.0000); //GB_romanpot01
    g_DynamicObject[275] = CreateObject(2123, -1597.8924, -2572.9096, -6.3737, 0.0000, 0.0000, 178.9001); //SWANK_DIN_CHAIR_4
    SetObjectMaterial(g_DynamicObject[275], 0, 14652, "ab_trukstpa", "CJ_WOOD1(EDGE)", 0xFFD2B48C);
    g_DynamicObject[276] = CreateObject(2568, -1598.2939, -2571.2192, -7.0107, 0.0000, 0.0000, -58.8997); //Hotel_dresser_3
    SetObjectMaterial(g_DynamicObject[276], 2, 14652, "ab_trukstpa", "CJ_WOOD1(EDGE)", 0xFFD2B48C);
    g_DynamicObject[277] = CreateObject(2257, -1594.4171, -2562.5297, -4.6121, 0.0000, 0.0000, 31.0000); //Red Bridge BG
    SetObjectMaterial(g_DynamicObject[277], 1, 17555, "eastbeach3c_lae2", "gradient128", 0xFF696969);
    g_DynamicObject[278] = CreateObject(2571, -1599.0201, -2575.6467, -7.0240, 0.0000, 0.0000, 96.3000); //Hotel_SINGLE_1
    SetObjectMaterial(g_DynamicObject[278], 0, 14652, "ab_trukstpa", "CJ_WOOD1(EDGE)", 0xFFD2B48C);
    SetObjectMaterial(g_DynamicObject[278], 1, 14383, "burg_1", "carpet4kb", 0xFF98FB98);
    g_DynamicObject[279] = CreateObject(19934, -1589.1850, -2571.2878, -7.0054, 0.0000, 0.0000, -59.2999); //speech table
    SetObjectMaterial(g_DynamicObject[279], 0, 19267, "mapmarkers", "samporange", 0x00000000);
    g_DynamicObject[280] = CreateObject(19581, -1583.2635, -2569.5683, -5.9573, 0.0000, 0.0000, 79.0998); //MarcosFryingPan1
    g_DynamicObject[281] = CreateObject(2257, -1576.6944, -2573.6545, -4.9218, 0.0000, 0.0000, -148.6997); //Kitchen Painting
    SetObjectMaterial(g_DynamicObject[281], 1, 2254, "picture_frame_clip", "CJ_PAINTING24", 0x00000000);
    g_DynamicObject[282] = CreateObject(19482, -1588.0478, -2573.0349, -3.3473, 0.0000, 0.0000, -58.6999); //greenscreen
    SetObjectMaterial(g_DynamicObject[282], 0, 18835, "mickytextures", "whiteforletters", 0xFF00FF00);
    g_DynamicObject[283] = CreateObject(19482, -1587.9659, -2572.9733, -5.6472, 0.0000, 0.0000, -59.0998); //greenscreen
    SetObjectMaterial(g_DynamicObject[283], 0, 18835, "mickytextures", "whiteforletters", 0xFF00FF00);
    g_DynamicObject[284] = CreateObject(19928, -1586.3111, -2569.0502, -6.9857, 0.0000, 0.0000, 120.0998); //MKWorkTop4
    g_DynamicObject[285] = CreateObject(2226, -1590.6009, -2568.9245, -5.5980, -180.0000, 0.0000, -58.6999); //LOW_HI_FI_3
    SetObjectMaterial(g_DynamicObject[285], 0, 8391, "ballys01", "CJ_blackplastic", 0x00000000);
    SetObjectMaterial(g_DynamicObject[285], 1, 8391, "ballys01", "CJ_blackplastic", 0x00000000);
    SetObjectMaterial(g_DynamicObject[285], 2, 2188, "kbblackjack", "chip_tray_1", 0x00000000);
    SetObjectMaterial(g_DynamicObject[285], 3, 16640, "a51", "Metal3_128", 0xFF696969);
    SetObjectMaterial(g_DynamicObject[285], 4, 1736, "cj_ammo", "CJ_Black_metal", 0x00000000);
    SetObjectMaterial(g_DynamicObject[285], 5, 8391, "ballys01", "CJ_blackplastic", 0x00000000);
    SetObjectMaterial(g_DynamicObject[285], 6, 8391, "ballys01", "CJ_blackplastic", 0x00000000);
    SetObjectMaterial(g_DynamicObject[285], 7, 1736, "cj_ammo", "CJ_Black_metal", 0x00000000);
    SetObjectMaterial(g_DynamicObject[285], 8, 1736, "cj_ammo", "CJ_Black_metal", 0x00000000);
    g_DynamicObject[286] = CreateObject(2226, -1590.3995, -2569.2939, -5.9979, 0.0000, 0.0000, -58.6999); //LOW_HI_FI_3
    SetObjectMaterial(g_DynamicObject[286], 0, 8391, "ballys01", "CJ_blackplastic", 0x00000000);
    SetObjectMaterial(g_DynamicObject[286], 1, 8391, "ballys01", "CJ_blackplastic", 0x00000000);
    SetObjectMaterial(g_DynamicObject[286], 2, 2188, "kbblackjack", "chip_tray_1", 0x00000000);
    SetObjectMaterial(g_DynamicObject[286], 3, 16640, "a51", "Metal3_128", 0xFF696969);
    SetObjectMaterial(g_DynamicObject[286], 4, 1736, "cj_ammo", "CJ_Black_metal", 0x00000000);
    SetObjectMaterial(g_DynamicObject[286], 5, 8391, "ballys01", "CJ_blackplastic", 0x00000000);
    SetObjectMaterial(g_DynamicObject[286], 6, 8391, "ballys01", "CJ_blackplastic", 0x00000000);
    SetObjectMaterial(g_DynamicObject[286], 7, 1736, "cj_ammo", "CJ_Black_metal", 0x00000000);
    SetObjectMaterial(g_DynamicObject[286], 8, 1736, "cj_ammo", "CJ_Black_metal", 0x00000000);
    g_DynamicObject[287] = CreateObject(19482, -1591.0395, -2573.2934, -4.1873, 90.0000, 0.0000, -144.4998); //greenscreen
    SetObjectMaterial(g_DynamicObject[287], 0, 18835, "mickytextures", "whiteforletters", 0xFF00FF00);
    g_DynamicObject[288] = CreateObject(19482, -1586.4216, -2570.4704, -4.2673, 90.0000, 0.0000, 26.4999); //greenscreen
    SetObjectMaterial(g_DynamicObject[288], 0, 18835, "mickytextures", "whiteforletters", 0xFF00FF00);
    g_DynamicObject[289] = CreateObject(19482, -1588.7207, -2571.8886, -6.9664, 0.0000, 90.2001, -58.6999); //greenscreen
    SetObjectMaterial(g_DynamicObject[289], 0, 10756, "airportroads_sfse", "ws_white_wall1", 0xFF00FF00);
    g_DynamicObject[290] = CreateObject(2394, -1590.0268, -2576.5776, -5.4895, 0.0000, 0.0000, -59.0000); //CJ_CLOTHES_STEP_1
    g_DynamicObject[291] = CreateObject(19893, -1590.5899, -2568.6215, -6.1477, -360.0000, -359.9999, -121.6798); //LaptopSAMP1
    SetObjectMaterial(g_DynamicObject[291], 1, 19894, "laptopsamp1", "laptopscreen2", 0x00000000);
    g_DynamicObject[292] = CreateObject(2257, -1594.4014, -2562.5554, -4.6121, 0.0000, 0.0000, 31.0000); //Red Bridge Painting
    SetObjectMaterial(g_DynamicObject[292], 1, 10838, "airwelcomesign_sfse", "ws_airwelcome1", 0xFF191970);
    g_DynamicObject[293] = CreateObject(19475, -1577.3543, -2558.3718, 17.8981, 0.0000, 0.0000, 120.8001); //mazarot eye
    SetDynamicObjectMaterialText(g_DynamicObject[293], 0, "N", OBJECT_MATERIAL_SIZE_256x256, "Webdings", 150, 1, 0xFF000000, 0x00000000, 1);
    g_DynamicObject[294] = CreateObject(2767, -1590.6236, -2568.6057, -6.1677, 0.0000, 0.0000, 34.8401); //CJ_CB_TRAY
    SetObjectMaterial(g_DynamicObject[294], 0, 16640, "a51", "Metal3_128", 0xFF696969);
    SetObjectMaterial(g_DynamicObject[294], 1, 18759, "dmcages", "metalgrid15-2", 0xFF000000);
    g_DynamicObject[295] = CreateObject(1663, -1590.4272, -2567.9450, -6.5531, 0.0000, 0.0000, -92.5998); //swivelchair_B
    SetObjectMaterial(g_DynamicObject[295], 0, 1726, "mrk_couches2", "kb_sofa5_256", 0x00000000);
    g_DynamicObject[296] = CreateObject(19924, -1582.6529, -2569.7026, -3.9897, 0.0000, 0.0000, 32.5998); //MKExtractionHood1
    g_DynamicObject[297] = CreateObject(19143, -1593.1003, -2568.7502, -3.0826, 180.0000, 180.0000, 53.9000); //PinSpotLight1
    g_DynamicObject[298] = CreateObject(19929, -1584.7187, -2568.0900, -6.9800, 0.0000, 0.0000, 120.3999); //MKWorkTop5
    g_DynamicObject[299] = CreateObject(3386, -1589.8492, -2565.4260, -7.0166, 0.0000, 0.0000, 121.1996); //a51_srack2_
    SetObjectMaterial(g_DynamicObject[299], 0, -1, "none", "none", 0xFFFFFFFF);
    g_DynamicObject[300] = CreateObject(19927, -1585.6274, -2570.2653, -6.9892, 0.0000, 0.0000, -149.8002); //MKWorkTop3
    g_DynamicObject[301] = CreateObject(19916, -1582.2135, -2566.6511, -7.0064, 0.0000, 0.0000, 30.7999); //CutsceneFridge1
    g_DynamicObject[302] = CreateObject(19923, -1582.6511, -2569.6513, -6.9868, 0.0000, 0.0000, -149.3999); //MKIslandCooker1
    g_DynamicObject[303] = CreateObject(19933, -1583.6772, -2567.6770, -6.5665, 0.0000, 0.0000, 121.0998); //MKWallOven1
    g_DynamicObject[304] = CreateObject(19143, -1592.3636, -2567.9831, -3.0826, 180.0000, 180.0000, 42.2999); //PinSpotLight1
    g_DynamicObject[305] = CreateObject(19936, -1586.2607, -2569.0549, -5.2669, 0.0000, 0.0000, -149.0001); //MKCupboard3
    g_DynamicObject[306] = CreateObject(19937, -1585.1700, -2568.0954, -5.2656, 0.0000, 0.0000, -58.9001); //MKCupboard4
    g_DynamicObject[307] = CreateObject(19143, -1591.6717, -2567.1884, -3.0826, 180.0000, 180.0000, 30.2000); //PinSpotLight1
    g_DynamicObject[308] = CreateObject(19937, -1585.7668, -2570.3889, -5.2754, 0.0000, 0.0000, 30.6998); //MKCupboard4
    g_DynamicObject[309] = CreateObject(19143, -1590.7076, -2566.9851, -3.0826, 180.0000, 180.0000, 21.2999); //PinSpotLight1
    g_DynamicObject[310] = CreateObject(19937, -1583.5340, -2567.1076, -5.2656, 0.0000, 0.0000, -58.9001); //MKCupboard4
    g_DynamicObject[311] = CreateObject(19143, -1589.6247, -2566.7416, -3.0826, 180.0000, 180.0000, 4.6999); //PinSpotLight1
    g_DynamicObject[312] = CreateObject(3388, -1593.0268, -2567.3483, -7.0061, 0.0000, 0.0000, 120.4000); //a51_srack4_
    SetObjectMaterial(g_DynamicObject[312], 0, -1, "none", "none", 0xFFFFFFFF);
    g_DynamicObject[313] = CreateObject(3389, -1593.8907, -2567.8518, -6.9875, 0.0000, 0.0000, 120.3999); //a51_srack1_
    SetObjectMaterial(g_DynamicObject[313], 0, -1, "none", "none", 0xFFFFFFFF);
    g_DynamicObject[314] = CreateObject(19464, -1581.9399, -2558.3129, -4.4800, 0.0000, 0.0000, -148.9996); //wall
    SetObjectMaterial(g_DynamicObject[314], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[315] = CreateObject(3387, -1590.6993, -2565.9353, -7.0145, 0.0000, 0.0000, 120.5998); //a51_srack3_
    SetObjectMaterial(g_DynamicObject[315], 0, -1, "none", "none", 0xFFFFFFFF);
    g_DynamicObject[316] = CreateObject(19422, -1590.0954, -2568.0266, -6.2203, 87.9999, 0.0000, -1.7999); //headphones02
    g_DynamicObject[317] = CreateObject(19993, -1590.1899, -2569.6218, -5.8681, -359.9999, -90.0000, 121.5000); //CutsceneBowl1
    SetObjectMaterial(g_DynamicObject[317], 0, 2600, "external", "CJ_LENS", 0x00000000);
    g_DynamicObject[318] = CreateObject(19611, -1589.1804, -2571.2834, -2.4934, 180.0000, 0.0000, 32.0998); //MicrophoneStand1
    g_DynamicObject[319] = CreateObject(19317, -1587.6800, -2566.4123, -6.2616, -67.7994, 1.7999, -149.0001); //bassguitar01
    g_DynamicObject[320] = CreateObject(19929, -1583.7856, -2567.5749, -6.9699, 0.0000, 0.0000, 120.3999); //MKWorkTop5
    g_DynamicObject[321] = CreateObject(2310, -1577.1622, -2571.1708, -6.5124, 0.0000, 0.0000, 30.0000); //MIKE_DIN_CHAIR
    SetObjectMaterial(g_DynamicObject[321], 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
    SetObjectMaterial(g_DynamicObject[321], 1, 16322, "a51_stores", "metalic128", 0xFFD2B48C);
    g_DynamicObject[322] = CreateObject(19922, -1578.3260, -2570.7307, -7.0033, 0.0000, 0.0000, 120.4000); //MKTable1
    g_DynamicObject[323] = CreateObject(1805, -1579.7381, -2574.7543, -6.7319, 0.0000, 0.0000, 31.1000); //CJ_BARSTOOL
    g_DynamicObject[324] = CreateObject(19940, -1582.8525, -2575.2685, -5.2753, 0.0000, 0.0000, 30.5000); //MKShelf3
    g_DynamicObject[325] = CreateObject(2310, -1577.5526, -2570.4941, -6.5124, 0.0000, 0.0000, 30.0000); //MIKE_DIN_CHAIR
    SetObjectMaterial(g_DynamicObject[325], 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
    SetObjectMaterial(g_DynamicObject[325], 1, 16322, "a51_stores", "metalic128", 0xFFD2B48C);
    g_DynamicObject[326] = CreateObject(19929, -1580.9350, -2574.5761, -6.9800, 0.0000, 0.0000, -149.2001); //MKWorkTop5
    g_DynamicObject[327] = CreateObject(2149, -1586.1103, -2569.0874, -5.9183, 0.0000, 0.0000, 73.4000); //CJ_MICROWAVE1
    g_DynamicObject[328] = CreateObject(1805, -1580.1385, -2574.1682, -6.7319, 0.0000, 0.0000, 31.1000); //CJ_BARSTOOL
    g_DynamicObject[329] = CreateObject(1805, -1580.5616, -2573.5256, -6.7319, 0.0000, 0.0000, 31.1000); //CJ_BARSTOOL
    g_DynamicObject[330] = CreateObject(19087, -1578.3243, -2570.8291, -1.9275, 0.0000, 0.0000, -60.6999); //Rope1
    SetObjectMaterial(g_DynamicObject[330], 0, 14629, "ab_chande", "ab_goldpipe", 0xFFFFFF00);
    g_DynamicObject[331] = CreateObject(19925, -1584.9272, -2571.4572, -6.9969, 0.0000, 0.0000, 120.8998); //MKWorkTop1
    g_DynamicObject[332] = CreateObject(19929, -1582.4615, -2575.4887, -6.9800, 0.0000, 0.0000, -149.2001); //MKWorkTop5
    g_DynamicObject[333] = CreateObject(2708, -1589.0107, -2577.9963, -7.2290, 0.0000, 0.0000, -59.0000); //ZIP_SHELF1
    SetObjectMaterial(g_DynamicObject[333], 1, 1983, "new_cabinets2", "shop_shelfnu3", 0x00000000);
    g_DynamicObject[334] = CreateObject(19940, -1581.8479, -2576.9758, -5.2753, 0.0000, 0.0000, 30.5000); //MKShelf3
    g_DynamicObject[335] = CreateObject(19925, -1579.5019, -2564.9462, -6.9857, 0.0000, 0.0000, 31.2000); //MKWorkTop1
    g_DynamicObject[336] = CreateObject(19938, -1585.1798, -2571.3793, -5.2553, 0.0000, 0.0000, 121.2994); //MKShelf1
    g_DynamicObject[337] = CreateObject(19940, -1582.8413, -2575.2536, -4.3151, 0.0000, 0.0000, 30.5000); //MKShelf3
    g_DynamicObject[338] = CreateObject(19940, -1582.8575, -2575.2617, -4.7753, 0.0000, 0.0000, 30.5000); //MKShelf3
    g_DynamicObject[339] = CreateObject(19940, -1581.8414, -2576.9831, -4.7753, 0.0000, 0.0000, 30.5000); //MKShelf3
    g_DynamicObject[340] = CreateObject(19938, -1585.1798, -2571.3793, -4.2652, 0.0000, 0.0000, 121.2994); //MKShelf1
    g_DynamicObject[341] = CreateObject(19938, -1585.1798, -2571.3793, -4.7550, 0.0000, 0.0000, 121.2994); //MKShelf1
    g_DynamicObject[342] = CreateObject(19569, -1582.8719, -2570.1464, -5.9998, 0.0000, 0.0000, 0.0000); //MilkCarton1
    g_DynamicObject[343] = CreateObject(19830, -1583.0665, -2566.9753, -6.0472, 0.0000, 0.0000, 7.5998); //Blender1
    g_DynamicObject[344] = CreateObject(19929, -1578.3269, -2565.4050, -6.9800, 0.0000, 0.0000, 30.5998); //MKWorkTop5
    g_DynamicObject[345] = CreateObject(2310, -1577.9377, -2569.8298, -6.5124, 0.0000, 0.0000, 30.0000); //MIKE_DIN_CHAIR
    SetObjectMaterial(g_DynamicObject[345], 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
    SetObjectMaterial(g_DynamicObject[345], 1, 16322, "a51_stores", "metalic128", 0xFFD2B48C);
    g_DynamicObject[346] = CreateObject(19925, -1577.3702, -2567.0004, -6.9857, 0.0000, 0.0000, 31.2000); //MKWorkTop1
    g_DynamicObject[347] = CreateObject(2310, -1579.2641, -2570.5712, -6.5124, 0.0000, 0.0000, -148.3999); //MIKE_DIN_CHAIR
    SetObjectMaterial(g_DynamicObject[347], 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
    SetObjectMaterial(g_DynamicObject[347], 1, 16322, "a51_stores", "metalic128", 0xFFD2B48C);
    g_DynamicObject[348] = CreateObject(2310, -1578.8127, -2571.3061, -6.5124, 0.0000, 0.0000, -148.3999); //MIKE_DIN_CHAIR
    SetObjectMaterial(g_DynamicObject[348], 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
    SetObjectMaterial(g_DynamicObject[348], 1, 16322, "a51_stores", "metalic128", 0xFFD2B48C);
    g_DynamicObject[349] = CreateObject(2310, -1578.4399, -2571.9125, -6.5124, 0.0000, 0.0000, -148.3999); //MIKE_DIN_CHAIR
    SetObjectMaterial(g_DynamicObject[349], 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
    SetObjectMaterial(g_DynamicObject[349], 1, 16322, "a51_stores", "metalic128", 0xFFD2B48C);
    g_DynamicObject[350] = CreateObject(2311, -1586.8066, -2564.7792, -6.9801, 0.0000, 0.0000, 32.4000); //CJ_TV_TABLE2
    SetObjectMaterial(g_DynamicObject[350], 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
    g_DynamicObject[351] = CreateObject(19940, -1581.8243, -2576.9750, -4.3151, 0.0000, 0.0000, 30.5000); //MKShelf3
    g_DynamicObject[352] = CreateObject(3009, -1576.0533, -2709.1694, 1.0497, 28.0000, 64.0005, -54.1002); //chopcop_armL
    SetObjectMaterial(g_DynamicObject[352], 0, 3899, "hospital2", "burnt_faggots64", 0xFF696969);
    g_DynamicObject[353] = CreateObject(19482, -1578.1545, -2570.9672, -6.9491, 0.0000, -89.9001, 30.7000); //kitchen rug
    SetObjectMaterial(g_DynamicObject[353], 0, 14590, "mafcastopfoor", "ab_carpet01", 0xFFD2B48C);
    g_DynamicObject[354] = CreateObject(19937, -1581.3519, -2574.2858, -5.0553, 0.0000, 0.0000, 30.6998); //MKCupboard4
    g_DynamicObject[355] = CreateObject(19937, -1580.3774, -2575.9282, -5.0553, 0.0000, 0.0000, 30.6998); //MKCupboard4
    g_DynamicObject[356] = CreateObject(19087, -1582.0024, -2573.5808, -1.5901, 0.0000, 0.0000, -61.0998); //Rope1
    SetObjectMaterial(g_DynamicObject[356], 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
    g_DynamicObject[357] = CreateObject(19087, -1581.6545, -2573.3908, -1.5901, 0.0000, 0.0000, -61.0998); //Rope1
    SetObjectMaterial(g_DynamicObject[357], 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
    g_DynamicObject[358] = CreateObject(18673, -1582.8048, -2569.6052, -7.5071, 0.0000, 0.0000, 29.3999); //cigarette_smoke
    g_DynamicObject[359] = CreateObject(19937, -1578.4663, -2564.7656, -5.2656, 0.0000, 0.0000, -148.4998); //MKCupboard4
    g_DynamicObject[360] = CreateObject(19937, -1577.4792, -2566.3779, -5.2656, 0.0000, 0.0000, -148.4998); //MKCupboard4
    g_DynamicObject[361] = CreateObject(19936, -1579.2143, -2564.8381, -5.2669, 0.0000, 0.0000, 121.3999); //MKCupboard3
    g_DynamicObject[362] = CreateObject(19560, -1583.7728, -2567.3815, -6.0472, 0.0000, 0.0000, 75.5998); //MeatTray1
    g_DynamicObject[363] = CreateObject(19583, -1583.3640, -2567.5163, -6.0373, 0.0000, 0.0000, -155.8999); //MarcosKnife1
    g_DynamicObject[364] = CreateObject(19586, -1583.4625, -2569.7426, -6.0071, 0.0000, 0.0000, 50.3997); //MarcosSpatula1
    g_DynamicObject[365] = CreateObject(19820, -1582.0738, -2576.4165, -6.0889, 0.0000, 0.0000, -29.1000); //AlcoholBottle1
    g_DynamicObject[366] = CreateObject(19821, -1582.2805, -2576.2219, -6.0689, 0.0000, 0.0000, 0.0000); //AlcoholBottle2
    g_DynamicObject[367] = CreateObject(19822, -1582.1074, -2575.8801, -6.0640, 0.0000, 0.0000, 0.0000); //AlcoholBottle3
    g_DynamicObject[368] = CreateObject(19823, -1582.5107, -2575.6127, -6.0398, 0.0000, 0.0000, 114.7994); //AlcoholBottle4
    g_DynamicObject[369] = CreateObject(19824, -1582.9825, -2575.0229, -6.0489, 0.0000, 0.0000, 0.0000); //AlcoholBottle5
    g_DynamicObject[370] = CreateObject(19819, -1583.1566, -2574.6791, -5.1704, 0.0000, 0.0000, 30.7000); //CocktailGlass1
    g_DynamicObject[371] = CreateObject(19819, -1583.0852, -2574.9167, -5.1704, 0.0000, 0.0000, 30.7000); //CocktailGlass1
    g_DynamicObject[372] = CreateObject(19819, -1582.8492, -2575.1354, -5.1704, 0.0000, 0.0000, 30.7000); //CocktailGlass1
    g_DynamicObject[373] = CreateObject(19819, -1582.7657, -2575.4111, -5.1704, 0.0000, 0.0000, 16.1000); //CocktailGlass1
    g_DynamicObject[374] = CreateObject(1541, -1580.8927, -2575.6081, -5.8769, 0.0000, 0.0000, 121.0998); //CJ_BEER_TAPS_1
    g_DynamicObject[375] = CreateObject(19572, -1582.0826, -2576.5573, -5.2603, 0.0000, 0.0000, -50.7999); //PisshBox1
    g_DynamicObject[376] = CreateObject(19818, -1582.4499, -2575.8579, -4.6838, 0.0000, 0.0000, 0.0000); //WineGlass1
    g_DynamicObject[377] = CreateObject(19818, -1582.3098, -2576.1582, -4.6838, 0.0000, 0.0000, -62.5000); //WineGlass1
    g_DynamicObject[378] = CreateObject(19818, -1582.1368, -2576.3378, -4.6838, 0.0000, 0.0000, -62.5000); //WineGlass1
    g_DynamicObject[379] = CreateObject(19482, -1586.1428, -2564.4033, -6.9538, 0.0000, 270.0000, -58.4000); //living room rug
    SetObjectMaterial(g_DynamicObject[379], 0, 14407, "carter_block", "zebra_skin", 0xFF696969);
    g_DynamicObject[380] = CreateObject(11744, -1577.8144, -2570.6572, -6.1999, 0.0000, 0.0000, 29.5000); //MPlate1
    SetObjectMaterial(g_DynamicObject[380], 0, 2822, "gb_cleancrock01", "cj_plate2", 0x00000000);
    g_DynamicObject[381] = CreateObject(2247, -1578.3801, -2570.7416, -5.9295, 0.0000, 0.0000, 0.0000); //Plant_Pot_15
    g_DynamicObject[382] = CreateObject(11744, -1577.4365, -2571.3295, -6.1999, 0.0000, 0.0000, 29.5000); //MPlate1
    SetObjectMaterial(g_DynamicObject[382], 0, 2822, "gb_cleancrock01", "cj_plate2", 0x00000000);
    g_DynamicObject[383] = CreateObject(11744, -1578.2081, -2569.9597, -6.1999, 0.0000, 0.0000, 29.5000); //MPlate1
    SetObjectMaterial(g_DynamicObject[383], 0, 2822, "gb_cleancrock01", "cj_plate2", 0x00000000);
    g_DynamicObject[384] = CreateObject(11744, -1579.0516, -2570.4345, -6.1999, 0.0000, 0.0000, 29.5000); //MPlate1
    SetObjectMaterial(g_DynamicObject[384], 0, 2822, "gb_cleancrock01", "cj_plate2", 0x00000000);
    g_DynamicObject[385] = CreateObject(11744, -1578.6496, -2571.1274, -6.1999, 0.0000, 0.0000, 29.5000); //MPlate1
    SetObjectMaterial(g_DynamicObject[385], 0, 2822, "gb_cleancrock01", "cj_plate2", 0x00000000);
    g_DynamicObject[386] = CreateObject(11744, -1578.2717, -2571.8027, -6.1999, 0.0000, 0.0000, 29.5000); //MPlate1
    SetObjectMaterial(g_DynamicObject[386], 0, 2822, "gb_cleancrock01", "cj_plate2", 0x00000000);
    g_DynamicObject[387] = CreateObject(19621, -1603.2768, -2720.8745, 3.3689, 0.0000, 0.0000, -104.7994); //OilCan1
    g_DynamicObject[388] = CreateObject(11715, -1578.1435, -2570.1027, -6.2090, 2.2000, 0.0000, 121.2994); //MetalFork1
    g_DynamicObject[389] = CreateObject(11716, -1578.2945, -2569.8310, -6.2100, 0.0000, 0.0000, 120.5000); //MetalKnife1
    g_DynamicObject[390] = CreateObject(11715, -1577.7207, -2570.7949, -6.2090, 2.2000, 0.0000, 121.2994); //MetalFork1
    g_DynamicObject[391] = CreateObject(11716, -1577.8861, -2570.5175, -6.2100, 0.0000, 0.0000, 120.5000); //MetalKnife1
    g_DynamicObject[392] = CreateObject(11715, -1577.3177, -2571.4528, -6.2090, 2.2000, 0.0000, 121.2994); //MetalFork1
    g_DynamicObject[393] = CreateObject(11716, -1577.4991, -2571.1708, -6.2100, 0.0000, 0.0000, 120.5000); //MetalKnife1
    g_DynamicObject[394] = CreateObject(18725, -1583.5633, -2567.9145, -8.2047, 0.0000, 0.0000, 31.3999); //smoke30lit
    g_DynamicObject[395] = CreateObject(11715, -1578.7314, -2570.9816, -6.2013, 2.2000, 0.0000, -58.0998); //MetalFork1
    g_DynamicObject[396] = CreateObject(11715, -1578.3714, -2571.6530, -6.2031, 2.2000, 0.0000, -58.0998); //MetalFork1
    g_DynamicObject[397] = CreateObject(11715, -1579.1333, -2570.2941, -6.2005, 2.2000, 0.0000, -60.0000); //MetalFork1
    g_DynamicObject[398] = CreateObject(11716, -1578.9591, -2570.5927, -6.2100, 0.0000, 0.0000, -61.0998); //MetalKnife1
    g_DynamicObject[399] = CreateObject(11716, -1578.5769, -2571.2866, -6.2100, 0.0000, 0.0000, -61.0998); //MetalKnife1
    g_DynamicObject[400] = CreateObject(11716, -1578.2032, -2571.9633, -6.2100, 0.0000, 0.0000, -61.0998); //MetalKnife1
    g_DynamicObject[401] = CreateObject(2250, -1578.2790, -2570.8542, -5.9702, 0.0000, 0.0000, 132.2998); //Plant_Pot_19
    g_DynamicObject[402] = CreateObject(2028, -1584.0522, -2566.3491, -6.3884, 0.0000, 0.0000, -149.6999); //SWANK_CONSOLE
    g_DynamicObject[403] = CreateObject(1666, -1578.3197, -2570.8173, -6.1251, 0.0000, 0.0000, 0.0000); //propbeerglass1
    SetObjectMaterial(g_DynamicObject[403], 0, 18889, "forcefields", "glass1", 0x00000000);
    g_DynamicObject[404] = CreateObject(19481, -1579.8122, -2734.5268, 4.9626, 0.0000, 0.0000, 89.9999); //subdock incorp
    SetDynamicObjectMaterialText(g_DynamicObject[404], 0, "INCORPORATED", OBJECT_MATERIAL_SIZE_512x256, "Verdana", 30, 1, 0xFF000000, 0x00000000, 1);
    g_DynamicObject[405] = CreateObject(2104, -1583.1512, -2566.4121, -6.9762, 0.0000, 0.0000, -149.1999); //SWANK_HI_FI
    g_DynamicObject[406] = CreateObject(2313, -1583.9802, -2566.2509, -6.9766, 0.0000, 0.0000, -148.6999); //CJ_TV_TABLE1
    SetObjectMaterial(g_DynamicObject[406], 2, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
    g_DynamicObject[407] = CreateObject(1719, -1584.8745, -2566.8415, -6.4689, 0.0000, 0.0000, -149.7998); //LOW_CONSOLE
    g_DynamicObject[408] = CreateObject(11724, -1587.5179, -2558.7180, -6.4643, 0.0000, 0.0000, 30.2999); //FireplaceSurround1
    SetObjectMaterial(g_DynamicObject[408], 0, 14623, "mafcasmain", "ab_tileStar", 0xFF696969);
    SetObjectMaterial(g_DynamicObject[408], 1, 3314, "ce_burbhouse", "sw_wallbrick_06", 0x00000000);
    SetObjectMaterial(g_DynamicObject[408], 2, 10871, "blacksky_sfse", "ws_blackmarble", 0x00000000);
    g_DynamicObject[409] = CreateObject(1736, -1587.4355, -2558.9057, -4.3273, 0.0000, 0.0000, 30.9999); //CJ_Stags_head
    SetObjectMaterial(g_DynamicObject[409], 1, -1, "none", "none", 0xFFFF0000);
    g_DynamicObject[410] = CreateObject(2232, -1586.1031, -2567.6757, -6.3768, 0.0000, 0.0000, -148.8000); //MED_SPEAKER_4
    SetObjectMaterial(g_DynamicObject[410], 0, 2225, "cj_hi_fi2", "CJ_SPEAKER3", 0xFFB22222);
    g_DynamicObject[411] = CreateObject(2229, -1587.2019, -2568.4067, -6.9755, 0.0000, 0.0000, -174.1000); //SWANK_SPEAKER
    SetObjectMaterial(g_DynamicObject[411], 0, 2225, "cj_hi_fi2", "CJ_SPEAKER3", 0xFFB22222);
    g_DynamicObject[412] = CreateObject(19873, -1585.8210, -2563.9709, -6.4088, 0.0000, 0.0000, 0.0000); //ToiletPaperRoll1
    g_DynamicObject[413] = CreateObject(2291, -1587.9516, -2566.1682, -7.0664, 0.0000, 0.0000, 121.0998); //SWK_SINGLE_1
    SetObjectMaterial(g_DynamicObject[413], 0, 9818, "ship_brijsfw", "blchr_seat2b", 0xFFCD853F);
    g_DynamicObject[414] = CreateObject(2292, -1589.2004, -2564.1684, -7.0770, 0.0000, 0.0000, 31.5000); //SWK_SINGLE_1b
    SetObjectMaterial(g_DynamicObject[414], 0, 9818, "ship_brijsfw", "blchr_seat2b", 0xFFCD853F);
    g_DynamicObject[415] = CreateObject(2292, -1587.5373, -2563.1496, -7.0770, 0.0000, 0.0000, 31.5000); //SWK_SINGLE_1b
    SetObjectMaterial(g_DynamicObject[415], 0, 9818, "ship_brijsfw", "blchr_seat2b", 0xFFCD853F);
    g_DynamicObject[416] = CreateObject(2291, -1586.3341, -2562.4094, -7.0664, 0.0000, 0.0000, 31.6000); //SWK_SINGLE_1
    SetObjectMaterial(g_DynamicObject[416], 0, 9818, "ship_brijsfw", "blchr_seat2b", 0xFFCD853F);
    g_DynamicObject[417] = CreateObject(2291, -1584.3994, -2562.8010, -7.0664, 0.0000, 0.0000, -58.0000); //SWK_SINGLE_1
    SetObjectMaterial(g_DynamicObject[417], 0, 9818, "ship_brijsfw", "blchr_seat2b", 0xFFCD853F);
    g_DynamicObject[418] = CreateObject(2291, -1584.8807, -2562.0288, -7.0664, 0.0000, 0.0000, -58.0000); //SWK_SINGLE_1
    SetObjectMaterial(g_DynamicObject[418], 0, 9818, "ship_brijsfw", "blchr_seat2b", 0xFFCD853F);
    g_DynamicObject[419] = CreateObject(2292, -1583.6456, -2563.9992, -7.0770, 0.0000, 0.0000, -147.6999); //SWK_SINGLE_1b
    SetObjectMaterial(g_DynamicObject[419], 0, 9818, "ship_brijsfw", "blchr_seat2b", 0xFFCD853F);
    g_DynamicObject[420] = CreateObject(19786, -1584.2690, -2567.1542, -5.4292, 0.0000, 0.0000, -149.0000); //LCDTVBig1
    SetObjectMaterial(g_DynamicObject[420], 1, 19165, "gtamap", "paperbacking", 0x00000000);
    g_DynamicObject[421] = CreateObject(2291, -1587.1263, -2562.8969, -7.0664, 0.0000, 0.0000, 31.6000); //SWK_SINGLE_1
    SetObjectMaterial(g_DynamicObject[421], 0, 9818, "ship_brijsfw", "blchr_seat2b", 0xFFCD853F);
    g_DynamicObject[422] = CreateObject(2292, -1587.7408, -2566.5661, -7.0770, 0.0000, 0.0000, 121.4000); //SWK_SINGLE_1b
    SetObjectMaterial(g_DynamicObject[422], 0, 9818, "ship_brijsfw", "blchr_seat2b", 0xFFCD853F);
    g_DynamicObject[423] = CreateObject(19377, -1588.8680, -2564.4785, -7.0633, 0.0000, 270.0000, 31.0000); //big floor
    SetObjectMaterial(g_DynamicObject[423], 0, 14537, "pdomebar", "club_floor2_sfwTEST", 0x00000000);
    g_DynamicObject[424] = CreateObject(19920, -1585.4188, -2563.8576, -6.4601, 5.9000, 0.0000, -154.0997); //CutsceneRemote1
    g_DynamicObject[425] = CreateObject(2292, -1585.1125, -2561.6293, -7.0770, 0.0000, 0.0000, -58.8997); //SWK_SINGLE_1b
    SetObjectMaterial(g_DynamicObject[425], 0, 9818, "ship_brijsfw", "blchr_seat2b", 0xFFCD853F);
    g_DynamicObject[426] = CreateObject(11725, -1587.4681, -2558.8110, -6.5805, 0.0000, 0.0000, 30.7000); //Fireplace1
    g_DynamicObject[427] = CreateObject(18762, -1587.8081, -2558.2263, -5.5478, 0.0000, 0.0000, 31.0000); //chimney
    SetObjectMaterial(g_DynamicObject[427], 0, 3314, "ce_burbhouse", "sw_wallbrick_06", 0x00000000);
    g_DynamicObject[428] = CreateObject(11726, -1586.1783, -2564.3176, -4.0784, 0.0000, 0.0000, 0.0000); //HangingLight1
    g_DynamicObject[429] = CreateObject(11727, -1603.0515, -2720.3513, 3.8320, 0.0000, 0.0000, 5.9998); //PaperChaseLight1
    SetObjectMaterial(g_DynamicObject[429], 0, 7247, "vgncoast", "metalwheel2_128", 0xFFC0C0C0);
    g_DynamicObject[430] = CreateObject(19562, -1585.1711, -2571.3654, -5.2437, 0.0000, 0.0000, 74.5998); //CerealBox2
    g_DynamicObject[431] = CreateObject(3273, -1575.2967, -2706.3901, 0.5726, 0.0000, 0.0000, 0.0000); //substa_transf2_
    g_DynamicObject[432] = CreateObject(19814, -1580.5736, -2564.8107, -6.6373, 0.0000, 0.0000, -148.3002); //ElectricalOutlet2
    SetObjectMaterial(g_DynamicObject[432], 0, -1, "none", "none", 0xFFFFFFFF);
    g_DynamicObject[433] = CreateObject(19828, -1589.7873, -2564.0642, -5.8962, 0.0000, 0.0000, 121.5998); //LightSwitch3Off
    SetObjectMaterial(g_DynamicObject[433], 0, -1, "none", "none", 0xFFFFFFFF);
    g_DynamicObject[434] = CreateObject(18075, -1580.1866, -2559.5058, -3.0868, 0.0000, 0.0000, -59.0998); //lightD
    g_DynamicObject[435] = CreateObject(2257, -1582.6350, -2557.4255, -4.9116, 0.0000, 0.0000, -58.8996); //skull painting
    SetObjectMaterial(g_DynamicObject[435], 1, 8421, "pirateland", "tislndskullrock_256", 0x00000000);
    g_DynamicObject[436] = CreateObject(2257, -1581.1545, -2559.9145, -4.8719, 0.0000, 180.0000, -58.8996); //skull painting
    SetObjectMaterial(g_DynamicObject[436], 1, 8421, "pirateland", "tislndskullrock_256", 0xFFC0C0C0);
    g_DynamicObject[437] = CreateObject(19935, -1579.5788, -2561.0131, -5.0486, 0.0000, 0.0000, -58.7000); //MKCupboard2
    SetObjectMaterial(g_DynamicObject[437], 0, 17555, "eastbeach3c_lae2", "gradient128", 0xFFD2691E);
    g_DynamicObject[438] = CreateObject(2257, -1585.3249, -2557.0705, -4.9317, 0.0000, 0.0000, 31.1004); //V Rock Painting
    SetObjectMaterial(g_DynamicObject[438], 1, 6864, "vgnvrock", "vrocksign1_256", 0xFF696969);
    g_DynamicObject[439] = CreateObject(1708, -1592.8979, -2562.5402, -6.9847, 0.0000, 0.0000, 0.0000); //kb_chair02
    SetObjectMaterial(g_DynamicObject[439], 1, 2023, "bitsnbobs", "CJ_LIGHTWOOD", 0xFFD2B48C);
    SetObjectMaterial(g_DynamicObject[439], 2, 18901, "matclothes", "hatmap1", 0xFF191970);
    g_DynamicObject[440] = CreateObject(19631, -1583.2740, -2701.0273, 1.8772, 0.0000, 87.1996, -34.9000); //SledgeHammer1
    g_DynamicObject[441] = CreateObject(2257, -1579.7220, -2562.2849, -4.9119, 0.0000, 0.0000, -58.8996); //skull painting
    SetObjectMaterial(g_DynamicObject[441], 1, 8421, "pirateland", "tislndskullrock_256", 0xFF696969);
    g_DynamicObject[442] = CreateObject(1708, -1595.5499, -2564.6416, -6.9847, 0.0000, 0.0000, 58.7999); //kb_chair02
    SetObjectMaterial(g_DynamicObject[442], 1, 2023, "bitsnbobs", "CJ_LIGHTWOOD", 0xFFD2B48C);
    SetObjectMaterial(g_DynamicObject[442], 2, 18901, "matclothes", "hatmap1", 0xFF191970);
    g_DynamicObject[443] = CreateObject(19786, -1578.0832, -2564.6950, -4.9826, 0.0000, 0.0000, 121.1996); //LCDTVBig1
    SetObjectMaterial(g_DynamicObject[443], 1, 6357, "sunstrans_law2", "SunBillB10", 0x00000000);
    g_DynamicObject[444] = CreateObject(2257, -1590.2606, -2560.0373, -4.9317, 0.0000, 0.0000, 31.1004); //Love Fist Painting
    SetObjectMaterial(g_DynamicObject[444], 1, 6354, "sunset03_law2", "billLA01", 0x00000000);
    g_DynamicObject[445] = CreateObject(2292, -1578.1042, -2553.3068, -7.0061, 0.0000, 0.0000, -59.0998); //SWK_SINGLE_1b
    g_DynamicObject[446] = CreateObject(18635, -1581.9675, -2556.9484, -6.8554, -86.5000, 0.0000, 44.5998); //GTASAHammer1
    g_DynamicObject[447] = CreateObject(19925, -1578.8022, -2560.2756, -6.9878, 0.0000, 0.0000, 121.1996); //MKWorkTop1
    SetObjectMaterial(g_DynamicObject[447], 0, 2176, "casino_props", "marblebox", 0x00000000);
    SetObjectMaterial(g_DynamicObject[447], 1, 17555, "eastbeach3c_lae2", "gradient128", 0xFFD2691E);
    g_DynamicObject[448] = CreateObject(19929, -1581.2462, -2556.2487, -6.9800, 0.0000, 0.0000, -148.6002); //MKWorkTop5
    SetObjectMaterial(g_DynamicObject[448], 0, 2176, "casino_props", "marblebox", 0x00000000);
    SetObjectMaterial(g_DynamicObject[448], 1, 17555, "eastbeach3c_lae2", "gradient128", 0xFFD2691E);
    g_DynamicObject[449] = CreateObject(19893, -1580.5660, -2557.9162, -6.0615, 0.0000, 0.0000, -58.3997); //LaptopSAMP1
    SetDynamicObjectMaterialText(g_DynamicObject[449], 1, ":(", OBJECT_MATERIAL_SIZE_512x512, "Arial", 255, 1, 0xFFFFFFFF, 0xFF4169E1, 1);
    g_DynamicObject[450] = CreateObject(19477, -1578.0782, -2704.8884, 4.0205, 0.0000, 0.0000, 179.3997); //transform employes
    SetObjectMaterial(g_DynamicObject[450], 0, 969, "electricgate", "KeepOut_64", 0x00000000);
    g_DynamicObject[451] = CreateObject(18673, -1580.5227, -2557.8947, -7.6384, 0.0000, 0.0000, 30.7000); //cigarette_smoke
    g_DynamicObject[452] = CreateObject(955, -1574.0843, -2570.2160, -6.5791, 0.0000, 0.0000, 120.9999); //CJ_EXT_SPRUNK
    g_DynamicObject[453] = CreateObject(19937, -1581.4001, -2555.7478, -5.0380, 0.0000, 0.0000, 31.7000); //MKCupboard4
    SetObjectMaterial(g_DynamicObject[453], 0, 17555, "eastbeach3c_lae2", "gradient128", 0xFFD2691E);
    g_DynamicObject[454] = CreateObject(19937, -1580.3967, -2557.3737, -5.0380, 0.0000, 0.0000, 31.7000); //MKCupboard4
    SetObjectMaterial(g_DynamicObject[454], 0, 17555, "eastbeach3c_lae2", "gradient128", 0xFFD2691E);
    g_DynamicObject[455] = CreateObject(19937, -1579.4045, -2558.9831, -5.0380, 0.0000, 0.0000, 31.7000); //MKCupboard4
    SetObjectMaterial(g_DynamicObject[455], 0, 17555, "eastbeach3c_lae2", "gradient128", 0xFFD2691E);
    g_DynamicObject[456] = CreateObject(19929, -1579.7611, -2558.6809, -6.9800, 0.0000, 0.0000, -148.6002); //MKWorkTop5
    SetObjectMaterial(g_DynamicObject[456], 0, 2176, "casino_props", "marblebox", 0x00000000);
    SetObjectMaterial(g_DynamicObject[456], 1, 17555, "eastbeach3c_lae2", "gradient128", 0xFFD2691E);
    g_DynamicObject[457] = CreateObject(19936, -1578.8889, -2560.3015, -5.0451, 0.0000, 0.0000, -148.2998); //MKCupboard3
    SetObjectMaterial(g_DynamicObject[457], 0, 17555, "eastbeach3c_lae2", "gradient128", 0xFFD2691E);
    g_DynamicObject[458] = CreateObject(2293, -1578.8778, -2553.7814, -6.9924, 0.0000, 0.0000, 31.1000); //SWK_1_FStool
    g_DynamicObject[459] = CreateObject(2291, -1577.8614, -2553.6875, -7.0219, 0.0000, 0.0000, -58.2999); //SWK_SINGLE_1
    g_DynamicObject[460] = CreateObject(2291, -1577.3701, -2554.4682, -7.0219, 0.0000, 0.0000, -58.2999); //SWK_SINGLE_1
    g_DynamicObject[461] = CreateObject(2291, -1576.8819, -2555.2614, -7.0219, 0.0000, 0.0000, -58.2999); //SWK_SINGLE_1
    g_DynamicObject[462] = CreateObject(638, -1575.1346, -2558.0913, -6.2940, 0.0000, 0.0000, 30.5998); //kb_planter+bush
    SetObjectMaterial(g_DynamicObject[462], 0, 17005, "farmhouse", "sjmbigold6", 0x00000000);
    SetObjectMaterial(g_DynamicObject[462], 1, 17958, "burnsalpha", "plantb256", 0x00000000);
    g_DynamicObject[463] = CreateObject(2001, -1574.5316, -2571.7319, -6.9791, 0.0000, 0.0000, 31.8999); //nu_plant_ofc
    SetObjectMaterial(g_DynamicObject[463], 0, 17958, "burnsalpha", "plantb256", 0x00000000);
    g_DynamicObject[464] = CreateObject(2291, -1573.9161, -2560.2270, -7.0219, 0.0000, 0.0000, -58.2999); //SWK_SINGLE_1
    g_DynamicObject[465] = CreateObject(2291, -1573.4261, -2561.0402, -7.0219, 0.0000, 0.0000, -58.2999); //SWK_SINGLE_1
    g_DynamicObject[466] = CreateObject(11743, -1578.2341, -2565.4003, -6.0594, 0.0000, 0.0000, -57.0998); //MCoffeeMachine1
    g_DynamicObject[467] = CreateObject(19935, -1579.5788, -2561.0131, -3.0188, 180.0000, 0.0000, -58.7000); //MKCupboard2
    SetObjectMaterial(g_DynamicObject[467], 0, 17555, "eastbeach3c_lae2", "gradient128", 0xFFD2691E);
    g_DynamicObject[468] = CreateObject(19835, -1580.6118, -2557.5209, -5.9653, 0.0000, 0.0000, -142.1999); //CoffeeCup1
    g_DynamicObject[469] = CreateObject(2292, -1568.9858, -2568.4492, -7.0061, 0.0000, 0.0000, -149.0997); //SWK_SINGLE_1b
    g_DynamicObject[470] = CreateObject(2257, -1593.1230, -2570.6347, -4.9218, 0.0000, 0.0000, -59.0996); //Desert Painting
    SetObjectMaterial(g_DynamicObject[470], 1, 2254, "picture_frame_clip", "CJ_PAINTING26", 0x00000000);
    g_DynamicObject[471] = CreateObject(2291, -1569.7401, -2567.2167, -7.0219, 0.0000, 0.0000, -58.2999); //SWK_SINGLE_1
    g_DynamicObject[472] = CreateObject(2292, -1569.9770, -2566.8300, -7.0061, 0.0000, 0.0000, -59.0998); //SWK_SINGLE_1b
    g_DynamicObject[473] = CreateObject(2291, -1569.3653, -2568.6857, -7.0219, 0.0000, 0.0000, -148.1999); //SWK_SINGLE_1
    g_DynamicObject[474] = CreateObject(19936, -1578.8940, -2560.2932, -2.9951, 180.0000, 0.0000, 121.7002); //MKCupboard3
    SetObjectMaterial(g_DynamicObject[474], 0, 17555, "eastbeach3c_lae2", "gradient128", 0xFFD2691E);
    g_DynamicObject[475] = CreateObject(19937, -1579.4045, -2558.9831, -2.9981, 180.0000, 0.0000, 31.7000); //MKCupboard4
    SetObjectMaterial(g_DynamicObject[475], 0, 17555, "eastbeach3c_lae2", "gradient128", 0xFFD2691E);
    g_DynamicObject[476] = CreateObject(1820, -1594.0329, -2564.0676, -6.9917, 0.0000, 0.0000, 32.7999); //COFFEE_LOW_4
    SetObjectMaterial(g_DynamicObject[476], 0, 2023, "bitsnbobs", "CJ_LIGHTWOOD", 0xFFD2B48C);
    g_DynamicObject[477] = CreateObject(19871, -1593.8902, -2563.3752, -7.2870, 0.0000, 0.0000, 28.6000); //CordonStand1
    g_DynamicObject[478] = CreateObject(1276, -1593.8728, -2563.3789, -6.0159, 0.0000, 0.0000, 0.0000); //package1
    SetObjectMaterial(g_DynamicObject[478], 0, 9683, "goldengate_sfw", "ws_goldengate1", 0x00000000);
    g_DynamicObject[479] = CreateObject(19937, -1580.4139, -2557.3518, -2.9981, 180.0000, 0.0000, 31.7000); //MKCupboard4
    SetObjectMaterial(g_DynamicObject[479], 0, 17555, "eastbeach3c_lae2", "gradient128", 0xFFD2691E);
    g_DynamicObject[480] = CreateObject(19937, -1581.4106, -2555.7297, -2.9981, 180.0000, 0.0000, 31.7000); //MKCupboard4
    SetObjectMaterial(g_DynamicObject[480], 0, 17555, "eastbeach3c_lae2", "gradient128", 0xFFD2691E);
    g_DynamicObject[481] = CreateObject(19870, -1576.1611, -2711.7158, 0.9215, 0.0000, 270.0000, 0.0000); //MeshFence3
    SetObjectMaterial(g_DynamicObject[481], 0, 10806, "airfence_sfse", "ws_griddyfence", 0xFFFFFFFF);
    SetObjectMaterial(g_DynamicObject[481], 1, 19165, "gtamap", "metal1-128x128", 0xFFFFFFFF);
    SetObjectMaterial(g_DynamicObject[481], 2, -1, "none", "none", 0x00FFFFFF);
    g_DynamicObject[482] = CreateObject(19870, -1577.9809, -2704.8769, 0.9276, 0.0000, 270.0000, 89.4000); //MeshFence3
    SetObjectMaterial(g_DynamicObject[482], 0, 10806, "airfence_sfse", "ws_griddyfence", 0xFFFFFFFF);
    SetObjectMaterial(g_DynamicObject[482], 1, 19165, "gtamap", "metal1-128x128", 0xFFFFFFFF);
    SetObjectMaterial(g_DynamicObject[482], 2, -1, "none", "none", 0x00FFFFFF);
    g_DynamicObject[483] = CreateObject(19870, -1576.1507, -2701.3901, 0.9412, 0.0000, 270.0000, 0.0000); //MeshFence3
    SetObjectMaterial(g_DynamicObject[483], 0, 10806, "airfence_sfse", "ws_griddyfence", 0xFFFFFFFF);
    SetObjectMaterial(g_DynamicObject[483], 1, 19165, "gtamap", "metal1-128x128", 0xFFFFFFFF);
    SetObjectMaterial(g_DynamicObject[483], 2, -1, "none", "none", 0x00FFFFFF);
    g_DynamicObject[484] = CreateObject(19870, -1577.8741, -2703.1787, 0.9118, 0.0000, 270.0000, 89.4000); //MeshFence3
    SetObjectMaterial(g_DynamicObject[484], 0, 10806, "airfence_sfse", "ws_griddyfence", 0xFFFFFFFF);
    SetObjectMaterial(g_DynamicObject[484], 1, 19165, "gtamap", "metal1-128x128", 0xFFFFFFFF);
    SetObjectMaterial(g_DynamicObject[484], 2, -1, "none", "none", 0x00FFFFFF);
    g_DynamicObject[485] = CreateObject(19870, -1577.8664, -2709.9611, 0.9326, 0.0000, 270.0000, 89.4000); //MeshFence3
    SetObjectMaterial(g_DynamicObject[485], 0, 10806, "airfence_sfse", "ws_griddyfence", 0xFFFFFFFF);
    SetObjectMaterial(g_DynamicObject[485], 1, 19165, "gtamap", "metal1-128x128", 0xFFFFFFFF);
    SetObjectMaterial(g_DynamicObject[485], 2, -1, "none", "none", 0x00FFFFFF);
    g_DynamicObject[486] = CreateObject(19477, -1578.0594, -2704.8981, 2.5306, 0.0000, 0.0000, 179.3997); //electric hazard
    SetObjectMaterial(g_DynamicObject[486], 0, 18365, "sawmillcs_t", "electricity_64", 0x00000000);
    g_DynamicObject[487] = CreateObject(3010, -1576.0533, -2709.1694, 1.0497, 28.0000, 64.0005, -54.1002); //chopcop_legR
    SetObjectMaterial(g_DynamicObject[487], 0, 3899, "hospital2", "burnt_faggots64", 0xFF696969);
    g_DynamicObject[488] = CreateObject(19806, -1578.3243, -2570.8291, -4.5074, 0.0000, 0.0000, -60.6999); //Chandelier1
    g_DynamicObject[489] = CreateObject(3012, -1576.0533, -2709.1694, 1.0497, 28.0000, 64.0005, -54.1002); //chopcop_head
    SetObjectMaterial(g_DynamicObject[489], 0, 3899, "hospital2", "burnt_faggots64", 0xFF696969);
    g_DynamicObject[490] = CreateObject(3011, -1576.0533, -2709.1694, 1.0497, 28.0000, 64.0005, -54.1002); //chopcop_legL
    SetObjectMaterial(g_DynamicObject[490], 0, 3899, "hospital2", "burnt_faggots64", 0xFF696969);
    g_DynamicObject[491] = CreateObject(18633, -1574.7497, -2705.5473, 5.8582, 0.0000, 0.0000, -97.5998); //transf conductor
    SetObjectMaterial(g_DynamicObject[491], 0, -1, "none", "none", 0xFFD2691E);
    g_DynamicObject[492] = CreateObject(19477, -1576.8249, -2554.9299, 5.9684, 0.0000, 0.0000, -149.0997); //mazarot text
    SetDynamicObjectMaterialText(g_DynamicObject[492], 0, "Mazarot Incorporated", OBJECT_MATERIAL_SIZE_512x256, "Courier New", 30, 1, 0xFF000000, 0x00000000, 1);
    g_DynamicObject[493] = CreateObject(3008, -1575.8487, -2709.1291, 0.8995, 0.0000, 0.0000, 48.0998); //chopcop_armR
    SetObjectMaterial(g_DynamicObject[493], 0, 3899, "hospital2", "burnt_faggots64", 0xFF696969);
    g_DynamicObject[494] = CreateObject(1428, -1574.8408, -2710.1525, 1.2970, 95.4999, 0.0000, 0.0000); //DYN_LADDER
    g_DynamicObject[495] = CreateObject(918, -1583.4189, -2703.1728, 1.4084, 0.0000, 0.0000, 0.0000); //CJ_FLAME_Drum
    g_DynamicObject[496] = CreateObject(18633, -1574.7469, -2707.2529, 5.8582, 0.0000, 0.0000, -97.5998); //transf conductor
    SetObjectMaterial(g_DynamicObject[496], 0, -1, "none", "none", 0xFFD2691E);
    g_DynamicObject[497] = CreateObject(19477, -1574.4565, -2706.3974, 5.7206, 0.0000, 0.0000, 0.0000); //transform fire seal
    SetObjectMaterial(g_DynamicObject[497], 0, 10756, "airportroads_sfse", "Heliconcrete", 0x00000000);
    g_DynamicObject[498] = CreateObject(19120, -1576.4549, -2710.2639, 1.0865, 0.0000, 88.1996, 0.0000); //PlainHelmet5
    SetObjectMaterial(g_DynamicObject[498], 0, -1, "none", "none", 0xFF696969);
    g_DynamicObject[499] = CreateObject(18633, -1575.5355, -2708.7795, 1.0707, 178.1997, 92.5998, -86.5997); //GTASAWrench1
    g_DynamicObject[500] = CreateObject(19899, -1583.3249, -2697.7260, 1.0154, 0.0000, 0.0000, 0.0000); //ToolCabinet1
    g_DynamicObject[501] = CreateObject(19900, -1583.1955, -2702.1010, 1.0456, 0.0000, 0.0000, -20.2999); //ToolCabinet2
    g_DynamicObject[502] = CreateObject(2103, -1583.1645, -2697.2907, 2.2820, 0.0000, 0.0000, 87.3999); //LOW_HI_FI_1
    g_DynamicObject[503] = CreateObject(19815, -1583.8177, -2700.5944, 2.6484, 0.0000, 0.0000, 90.4000); //ToolBoard1
    g_DynamicObject[504] = CreateObject(19996, -1582.2425, -2699.7988, 1.0115, 0.0000, 0.0000, -69.0998); //CutsceneFoldChair1
    g_DynamicObject[505] = CreateObject(3633, -1579.4892, -2697.4365, 1.4903, 0.0000, 0.0000, -45.2999); //imoildrum4_LAS
    SetObjectMaterial(g_DynamicObject[505], 0, 3630, "compthotrans_la", "nbarlid", 0xFF696969);
    SetObjectMaterial(g_DynamicObject[505], 1, 918, "externalext", "CJ_OIL_DRUM", 0x00000000);
    g_DynamicObject[506] = CreateObject(2607, -1583.3172, -2700.6296, 1.4470, 0.0000, 0.0000, -92.4000); //mechanics desk
    SetObjectMaterial(g_DynamicObject[506], 0, 1560, "7_11_door", "cj_sheetmetal2", 0x00000000);
    SetObjectMaterial(g_DynamicObject[506], 1, 14599, "paperchasebits", "ab_blueprint4", 0x00000000);
    SetObjectMaterial(g_DynamicObject[506], 2, 1560, "7_11_door", "cj_sheetmetal2", 0x00000000);
    SetObjectMaterial(g_DynamicObject[506], 3, 1560, "7_11_door", "cj_sheetmetal2", 0x00000000);
    SetObjectMaterial(g_DynamicObject[506], 4, 14776, "genintintcarint3", "tool_store", 0x00000000);
    g_DynamicObject[507] = CreateObject(3633, -1577.9232, -2697.1154, 1.4903, 0.0000, 0.0000, -0.5000); //imoildrum4_LAS
    SetObjectMaterial(g_DynamicObject[507], 0, 3630, "compthotrans_la", "nbarlid", 0xFF696969);
    SetObjectMaterial(g_DynamicObject[507], 1, 918, "externalext", "CJ_OIL_DRUM", 0x00000000);
    g_DynamicObject[508] = CreateObject(19477, -1583.7806, -2705.4870, 3.7046, 0.0000, 0.0000, 0.0000); //mechanics poster
    SetObjectMaterial(g_DynamicObject[508], 0, 14737, "whorewallstuff", "ah_painting2", 0xFFFFB6C1);
    g_DynamicObject[509] = CreateObject(19898, -1578.8116, -2698.0627, 1.0319, 0.0000, 0.0000, 78.8000); //OilFloorStain1
    g_DynamicObject[510] = CreateObject(2475, -1583.0516, -2575.8837, -6.8269, 0.0000, 0.0000, -59.0998); //CJ_HOBBY_SHELF_3
    SetObjectMaterial(g_DynamicObject[510], 1, -1, "none", "none", 0xFF800000);
    g_DynamicObject[511] = CreateObject(2517, -1601.0295, -2570.6696, -6.9798, 0.0000, 0.0000, -149.0997); //CJ_SHOWER1
    g_DynamicObject[512] = CreateObject(2518, -1600.8172, -2568.6247, -7.1051, 0.0000, 0.0000, 31.1000); //CJ_B_SINK2
    g_DynamicObject[513] = CreateObject(2475, -1585.2961, -2578.8269, -6.8269, 0.0000, 0.0000, -148.8999); //CJ_HOBBY_SHELF_3
    SetObjectMaterial(g_DynamicObject[513], 1, -1, "none", "none", 0xFF800000);
    g_DynamicObject[514] = CreateObject(2475, -1586.5466, -2579.5810, -6.8269, 0.0000, 0.0000, -148.8999); //CJ_HOBBY_SHELF_3
    SetObjectMaterial(g_DynamicObject[514], 1, -1, "none", "none", 0xFF800000);
    g_DynamicObject[515] = CreateObject(2475, -1587.6009, -2579.2292, -6.8269, 0.0000, 0.0000, 121.0998); //CJ_HOBBY_SHELF_3
    SetObjectMaterial(g_DynamicObject[515], 1, -1, "none", "none", 0xFF800000);
    g_DynamicObject[516] = CreateObject(2475, -1588.3602, -2577.9692, -6.8269, 0.0000, 0.0000, 121.0998); //CJ_HOBBY_SHELF_3
    SetObjectMaterial(g_DynamicObject[516], 1, -1, "none", "none", 0xFF800000);
    g_DynamicObject[517] = CreateObject(2475, -1589.8846, -2575.4453, -6.8269, 0.0000, 0.0000, 121.0998); //CJ_HOBBY_SHELF_3
    SetObjectMaterial(g_DynamicObject[517], 1, -1, "none", "none", 0xFF800000);
    g_DynamicObject[518] = CreateObject(927, -1583.5992, -2574.9797, -5.7080, 0.0000, 0.0000, -58.9999); //Piping_Detail
    g_DynamicObject[519] = CreateObject(2475, -1589.1296, -2576.6938, -6.8269, 0.0000, 0.0000, 121.0998); //CJ_HOBBY_SHELF_3
    SetObjectMaterial(g_DynamicObject[519], 1, -1, "none", "none", 0xFF800000);
    g_DynamicObject[520] = CreateObject(2475, -1584.0289, -2578.0625, -6.8269, 0.0000, 0.0000, -148.8999); //CJ_HOBBY_SHELF_3
    SetObjectMaterial(g_DynamicObject[520], 1, -1, "none", "none", 0xFF800000);
    g_DynamicObject[521] = CreateObject(2475, -1587.0655, -2572.7619, -6.8269, 0.0000, 0.0000, 31.5000); //CJ_HOBBY_SHELF_3
    SetObjectMaterial(g_DynamicObject[521], 1, -1, "none", "none", 0xFF800000);
    g_DynamicObject[522] = CreateObject(2475, -1589.5898, -2574.3090, -6.8269, 0.0000, 0.0000, 31.5000); //CJ_HOBBY_SHELF_3
    SetObjectMaterial(g_DynamicObject[522], 1, -1, "none", "none", 0xFF800000);
    g_DynamicObject[523] = CreateObject(19464, -1601.2462, -2566.4763, -4.4800, 0.0000, 0.0000, -59.0000); //wall
    SetObjectMaterial(g_DynamicObject[523], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[524] = CreateObject(2475, -1588.3282, -2573.5349, -6.8269, 0.0000, 0.0000, 31.5000); //CJ_HOBBY_SHELF_3
    SetObjectMaterial(g_DynamicObject[524], 1, -1, "none", "none", 0xFF800000);
    g_DynamicObject[525] = CreateObject(2525, -1601.7600, -2569.2041, -6.9899, 0.0000, 0.0000, 31.3999); //CJ_TOILET4
    g_DynamicObject[526] = CreateObject(19464, -1594.8575, -2580.8200, -4.4800, 0.0000, 0.0000, -148.9996); //wall
    SetObjectMaterial(g_DynamicObject[526], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[527] = CreateObject(19464, -1591.7988, -2585.9099, -4.4800, 0.0000, 0.0000, -148.9996); //wall
    SetObjectMaterial(g_DynamicObject[527], 0, 3820, "boxhses_sfsx", "ws_mixedbrick", 0x00000000);
    g_DynamicObject[528] = CreateObject(2394, -1589.1611, -2580.7338, -5.4895, 0.0000, 0.0000, -148.8000); //CJ_CLOTHES_STEP_1
    g_DynamicObject[529] = CreateObject(2708, -1588.5240, -2580.5119, -7.2290, 0.0000, 0.0000, -148.8000); //ZIP_SHELF1
    SetObjectMaterial(g_DynamicObject[529], 1, 1983, "new_cabinets2", "shop_shelfnu3", 0x00000000);
    g_DynamicObject[530] = CreateObject(2394, -1591.2059, -2581.9736, -5.4895, 0.0000, 0.0000, -148.8000); //CJ_CLOTHES_STEP_1
    g_DynamicObject[531] = CreateObject(2708, -1590.5688, -2581.7517, -7.2290, 0.0000, 0.0000, -148.8000); //ZIP_SHELF1
    SetObjectMaterial(g_DynamicObject[531], 1, 1983, "new_cabinets2", "shop_shelfnu3", 0x00000000);
    g_DynamicObject[532] = CreateObject(2394, -1593.2938, -2581.5952, -5.4895, 0.0000, 0.0000, 120.9998); //CJ_CLOTHES_STEP_1
    g_DynamicObject[533] = CreateObject(2708, -1593.0738, -2582.2329, -7.2290, 0.0000, 0.0000, 120.9998); //ZIP_SHELF1
    SetObjectMaterial(g_DynamicObject[533], 1, 1983, "new_cabinets2", "shop_shelfnu3", 0x00000000);
    g_DynamicObject[534] = CreateObject(2394, -1594.5249, -2579.5468, -5.4895, 0.0000, 0.0000, 120.9998); //CJ_CLOTHES_STEP_1
    g_DynamicObject[535] = CreateObject(2708, -1594.3049, -2580.1845, -7.2290, 0.0000, 0.0000, 120.9998); //ZIP_SHELF1
    SetObjectMaterial(g_DynamicObject[535], 1, 1983, "new_cabinets2", "shop_shelfnu3", 0x00000000);
    g_DynamicObject[536] = CreateObject(18643, -1572.1627, -2563.3237, 32.3437, -23.0000, 128.7996, 44.4999); //LaserPointer1
    g_DynamicObject[537] = CreateObject(19564, -1586.5183, -2579.2836, -6.0180, 0.0000, 0.0000, 31.9999); //JuiceBox2
    g_DynamicObject[538] = CreateObject(19564, -1586.2833, -2579.2653, -6.0180, 0.0000, 0.0000, 37.0000); //JuiceBox2
    g_DynamicObject[539] = CreateObject(19565, -1588.0439, -2578.1062, -5.3207, 0.0000, 0.0000, -28.7999); //IceCreamBarsBox1
    g_DynamicObject[540] = CreateObject(19565, -1588.2739, -2577.7749, -5.3207, 0.0000, 0.0000, -28.7999); //IceCreamBarsBox1
    g_DynamicObject[541] = CreateObject(19566, -1589.3935, -2576.1818, -5.3260, 0.0000, 0.0000, -50.5998); //FishFingersBox1
    g_DynamicObject[542] = CreateObject(19566, -1589.5019, -2575.9074, -5.3260, 0.0000, 0.0000, -43.2999); //FishFingersBox1
    g_DynamicObject[543] = CreateObject(19566, -1589.9050, -2575.2109, -5.3260, 0.0000, 0.0000, -70.4000); //FishFingersBox1
    g_DynamicObject[544] = CreateObject(19572, -1586.3276, -2572.5615, -6.0208, 0.0000, 0.0000, 31.5000); //PisshBox1
    g_DynamicObject[545] = CreateObject(19572, -1586.7634, -2572.8266, -5.3210, 0.0000, 0.0000, 31.5000); //PisshBox1
    SetObjectMaterial(g_DynamicObject[545], 0, 2425, "cj_jucie", "CJ_SPRUNK_FRONT2", 0x00000000);
    g_DynamicObject[546] = CreateObject(19572, -1589.3238, -2574.3906, -6.0208, 0.0000, 0.0000, 31.5000); //PisshBox1
    SetObjectMaterial(g_DynamicObject[546], 0, 1340, "foodkarts", "chillidog_sign", 0x00000000);
    g_DynamicObject[547] = CreateObject(19572, -1585.6180, -2578.7973, -6.0208, 0.0000, 0.0000, 31.5000); //PisshBox1
    SetObjectMaterial(g_DynamicObject[547], 0, 1340, "foodkarts", "iceyside", 0x00000000);
    g_DynamicObject[548] = CreateObject(19572, -1582.6633, -2576.8608, -4.6310, 0.0000, 0.0000, 122.4000); //PisshBox1
    SetObjectMaterial(g_DynamicObject[548], 0, 2543, "cj_ss_3", "CJ_DOG_FOOD2", 0x00000000);
    g_DynamicObject[549] = CreateObject(19572, -1583.5488, -2577.5656, -5.3210, 0.0000, 0.0000, 27.0998); //PisshBox1
    SetObjectMaterial(g_DynamicObject[549], 0, 2543, "cj_ss_3", "CJ_DOOG_FOOD", 0x00000000);
    g_DynamicObject[550] = CreateObject(19572, -1588.6313, -2577.0412, -6.6988, 0.0000, 0.0000, -149.2998); //PisshBox1
    SetObjectMaterial(g_DynamicObject[550], 0, 5132, "imstuff_las2", "cardbrdirty128", 0x00000000);
    g_DynamicObject[551] = CreateObject(19572, -1585.4847, -2578.6965, -6.6988, 0.0000, 0.0000, -149.2998); //PisshBox1
    SetObjectMaterial(g_DynamicObject[551], 0, 5132, "imstuff_las2", "cardbrdirty128", 0x00000000);
    g_DynamicObject[552] = CreateObject(19089, -1628.9184, -2724.8864, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[552], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[553] = CreateObject(19476, -1590.7757, -2565.0964, -5.2821, 0.0000, 0.0000, 120.3998); //recording in progres
    SetDynamicObjectMaterialText(g_DynamicObject[553], 0, "Recording in progress", OBJECT_MATERIAL_SIZE_512x256, "Impact", 60, 1, 0xFF000000, 0x00000000, 1);
    g_DynamicObject[554] = CreateObject(19571, -1582.7071, -2576.8198, -5.9871, 90.0000, 0.0000, 30.8999); //PizzaBox1
    SetObjectMaterial(g_DynamicObject[554], 0, 2821, "gb_foodwrap01", "GB_foodwrap03", 0x00000000);
    g_DynamicObject[555] = CreateObject(2293, -1591.7712, -2578.8901, -6.9847, 0.0000, 0.0000, 30.9999); //SWK_1_FStool
    SetObjectMaterial(g_DynamicObject[555], 0, 18031, "cj_exp", "mp_cloth_ds3", 0x00000000);
    g_DynamicObject[556] = CreateObject(1492, -1599.1346, -2568.5092, -7.0096, 0.0000, 0.0000, -58.5998); //Gen_doorINT02
    SetObjectMaterial(g_DynamicObject[556], 0, -1, "none", "none", 0xFFD2691E);
    SetObjectMaterial(g_DynamicObject[556], 1, 14526, "sweetsmain", "ah_whitpanelceil", 0x00000000);
    g_DynamicObject[557] = CreateObject(1492, -1596.0771, -2573.5832, -7.0096, 0.0000, 0.0000, -58.5998); //Gen_doorINT02
    SetObjectMaterial(g_DynamicObject[557], 0, -1, "none", "none", 0xFFD2691E);
    SetObjectMaterial(g_DynamicObject[557], 1, 14526, "sweetsmain", "ah_whitpanelceil", 0x00000000);
    g_DynamicObject[558] = CreateObject(1492, -1592.9366, -2566.4892, -7.0096, 0.0000, 0.0000, 30.9001); //Gen_doorINT02
    SetObjectMaterial(g_DynamicObject[558], 0, -1, "none", "none", 0xFFD2691E);
    SetObjectMaterial(g_DynamicObject[558], 1, 14526, "sweetsmain", "ah_whitpanelceil", 0x00000000);
    g_DynamicObject[559] = CreateObject(18075, -1574.9425, -2568.2695, -3.0868, 0.0000, 0.0000, -59.0998); //lightD
    g_DynamicObject[560] = CreateObject(18075, -1587.5283, -2574.4323, -3.0868, 0.0000, 0.0000, -59.0998); //lightD
    g_DynamicObject[561] = CreateObject(18075, -1592.1815, -2566.6757, -3.0868, 0.0000, 0.0000, -59.0998); //lightD
    g_DynamicObject[562] = CreateObject(18075, -1600.8968, -2574.3901, -3.1168, 0.0000, 0.0000, -148.9998); //lightD
    g_DynamicObject[563] = CreateObject(2475, -1582.7464, -2577.2919, -6.8269, 0.0000, 0.0000, -148.8999); //CJ_HOBBY_SHELF_3
    SetObjectMaterial(g_DynamicObject[563], 1, -1, "none", "none", 0xFF800000);
    g_DynamicObject[564] = CreateObject(19089, -1620.9583, -2724.8864, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[564], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[565] = CreateObject(19089, -1635.7982, -2724.8864, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[565], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[566] = CreateObject(19089, -1635.7984, -2723.1867, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[566], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[567] = CreateObject(19089, -1620.9587, -2723.1867, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[567], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[568] = CreateObject(19089, -1605.4284, -2723.1867, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[568], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[569] = CreateObject(18608, -1604.8885, -2724.0666, 13.9694, 0.0000, 0.0000, 270.0000); //countS_lights01
    g_DynamicObject[570] = CreateObject(18608, -1628.3785, -2724.0666, 13.9694, 0.0000, 0.0000, 270.0000); //countS_lights01
    g_DynamicObject[571] = CreateObject(19089, -1605.4284, -2724.8864, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[571], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[572] = CreateObject(19089, -1597.4685, -2724.8864, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[572], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[573] = CreateObject(19089, -1612.3082, -2724.8864, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[573], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[574] = CreateObject(19089, -1612.3084, -2723.1867, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[574], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[575] = CreateObject(19089, -1597.4687, -2723.1867, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[575], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[576] = CreateObject(19089, -1583.1175, -2723.1867, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[576], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[577] = CreateObject(18608, -1582.5775, -2724.0666, 13.9694, 0.0000, 0.0000, 270.0000); //countS_lights01
    g_DynamicObject[578] = CreateObject(19089, -1583.1175, -2724.8864, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[578], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[579] = CreateObject(19089, -1575.1573, -2724.8864, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[579], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[580] = CreateObject(19089, -1589.9970, -2724.8864, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[580], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[581] = CreateObject(19089, -1589.9975, -2723.1867, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[581], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[582] = CreateObject(19089, -1575.1578, -2723.1867, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[582], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[583] = CreateObject(19089, -1560.6142, -2723.1867, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[583], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[584] = CreateObject(18608, -1560.0743, -2724.0666, 13.9694, 0.0000, 0.0000, 270.0000); //countS_lights01
    g_DynamicObject[585] = CreateObject(19089, -1560.6142, -2724.8864, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[585], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[586] = CreateObject(19089, -1552.6541, -2724.8864, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[586], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[587] = CreateObject(19089, -1567.4940, -2724.8864, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[587], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[588] = CreateObject(19089, -1567.4942, -2723.1867, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[588], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[589] = CreateObject(19089, -1552.6545, -2723.1867, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[589], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[590] = CreateObject(19089, -1539.5429, -2723.1867, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[590], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[591] = CreateObject(18608, -1539.0030, -2724.0666, 13.9694, 0.0000, 0.0000, 270.0000); //countS_lights01
    g_DynamicObject[592] = CreateObject(19089, -1539.5429, -2724.8864, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[592], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[593] = CreateObject(19089, -1531.5830, -2724.8864, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[593], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[594] = CreateObject(19089, -1546.4227, -2724.8864, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[594], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[595] = CreateObject(19089, -1546.4229, -2723.1867, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[595], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[596] = CreateObject(19089, -1531.5832, -2723.1867, 22.6690, 0.0000, 0.0000, 270.0000); //light attach wire
    SetObjectMaterial(g_DynamicObject[596], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[597] = CreateObject(18228, -1585.5725, -2715.1650, 36.0017, -178.7998, 0.0000, 8.1997); //cunt_rockgp2_21
    SetObjectMaterial(g_DynamicObject[597], 0, 896, "underwater", "greyrockbig", 0x00000000);
    SetObjectMaterial(g_DynamicObject[597], 1, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[598] = CreateObject(18228, -1528.9427, -2715.8801, 35.8297, -178.7998, 0.0000, 44.2994); //cunt_rockgp2_21
    SetObjectMaterial(g_DynamicObject[598], 0, 896, "underwater", "greyrockbig", 0x00000000);
    SetObjectMaterial(g_DynamicObject[598], 1, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[599] = CreateObject(18228, -1563.5959, -2710.6286, 36.3843, -178.7998, 0.0000, 67.8992); //cunt_rockgp2_21
    SetObjectMaterial(g_DynamicObject[599], 0, 896, "underwater", "greyrockbig", 0x00000000);
    SetObjectMaterial(g_DynamicObject[599], 1, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[600] = CreateObject(18228, -1617.9842, -2713.0014, 37.0307, -178.7998, 0.0000, -138.6002); //cunt_rockgp2_21
    SetObjectMaterial(g_DynamicObject[600], 0, 896, "underwater", "greyrockbig", 0x00000000);
    SetObjectMaterial(g_DynamicObject[600], 1, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[601] = CreateObject(18228, -1550.2810, -2722.3798, 34.9813, -178.7998, 0.0000, -156.7001); //cunt_rockgp2_21
    SetObjectMaterial(g_DynamicObject[601], 0, 896, "underwater", "greyrockbig", 0x00000000);
    SetObjectMaterial(g_DynamicObject[601], 1, 896, "underwater", "greyrockbig", 0x00000000);
    g_DynamicObject[602] = CreateObject(19482, -1580.7840, -2556.3254, -4.5331, 0.0000, 0.0000, 31.7000); //incorporated
    SetDynamicObjectMaterialText(g_DynamicObject[602], 0, "Incorporated", OBJECT_MATERIAL_SIZE_512x256, "Arial", 40, 1, 0xFF000000, 0x00000000, 1);
    g_DynamicObject[603] = CreateObject(19482, -1579.2923, -2558.7431, -4.5331, 0.0000, 0.0000, 31.7000); //mazarot
    SetDynamicObjectMaterialText(g_DynamicObject[603], 0, "Mazarot", OBJECT_MATERIAL_SIZE_512x256, "Arial", 40, 1, 0xFF000000, 0x00000000, 1);
    g_DynamicObject[604] = CreateObject(19475, -1577.2285, -2555.2065, 0.4681, 0.0000, 0.0000, -149.0997); //mazarot eye
    SetDynamicObjectMaterialText(g_DynamicObject[604], 0, "N", OBJECT_MATERIAL_SIZE_256x256, "Webdings", 150, 1, 0xFF000000, 0x00000000, 1);
    g_DynamicObject[605] = CreateObject(2965, -1579.9245, -2557.6975, -4.5275, 0.0000, 89.6996, -150.0000); //mazarot logo
    SetObjectMaterial(g_DynamicObject[605], 0, -1, "none", "none", 0xFF000000);
    g_DynamicObject[606] = CreateObject(18608, -1580.7408, -2701.8759, 7.2146, 0.0000, 0.0000, 0.0000); //countS_lights01
    g_DynamicObject[607] = CreateObject(19481, -1579.9521, -2734.5668, 6.6027, 0.0000, 0.0000, 89.9999); //subdock mazarot bg
    SetDynamicObjectMaterialText(g_DynamicObject[607], 0, "MAZAROT", OBJECT_MATERIAL_SIZE_512x256, "Verdana", 50, 1, 0xFFD2691E, 0x00000000, 1);
    g_DynamicObject[608] = CreateObject(19481, -1579.9123, -2734.5668, 4.8726, 0.0000, 0.0000, 89.9999); //subdock incorp bg
    SetDynamicObjectMaterialText(g_DynamicObject[608], 0, "INCORPORATED", OBJECT_MATERIAL_SIZE_512x256, "Verdana", 30, 1, 0xFFD2691E, 0x00000000, 1);
    g_DynamicObject[609] = CreateObject(19582, -1582.8050, -2569.5881, -5.9573, 0.0000, 0.0000, 46.3997); //MarcosSteak1
    SetObjectMaterial(g_DynamicObject[609], 0, -1, "none", "none", 0xFF8B4513);
    g_DynamicObject[610] = CreateObject(2518, -1585.3812, -2570.4963, -6.9899, 0.0000, 0.0000, 122.3999); //CJ_B_SINK2
    SetObjectMaterial(g_DynamicObject[610], 0, -1, "none", "none", 0x00FFFFFF);
    SetObjectMaterial(g_DynamicObject[610], 1, -1, "none", "none", 0x00FFFFFF);
    SetObjectMaterial(g_DynamicObject[610], 2, 6000, "con_drivein", "Desrtmetal", 0xFFF5F5F5);
    g_DynamicObject[611] = CreateObject(19828, -1580.4300, -2565.0175, -5.8962, 0.0000, 0.0000, 31.2000); //LightSwitch3Off
    SetObjectMaterial(g_DynamicObject[611], 0, -1, "none", "none", 0xFFFFFFFF);
    g_DynamicObject[612] = CreateObject(19828, -1576.4521, -2567.6875, -5.8958, 0.0000, 0.0000, -58.8997); //LightSwitch3Off
    SetObjectMaterial(g_DynamicObject[612], 0, -1, "none", "none", 0xFFFFFFFF);
    g_DynamicObject[613] = CreateObject(19828, -1583.6833, -2574.2768, -5.8958, 0.0000, 0.0000, 121.0998); //LightSwitch3Off
    SetObjectMaterial(g_DynamicObject[613], 0, -1, "none", "none", 0xFFFFFFFF);
    g_DynamicObject[614] = CreateObject(19814, -1582.9289, -2566.5747, -5.3572, 0.0000, 0.0000, 31.5998); //ElectricalOutlet2
    SetObjectMaterial(g_DynamicObject[614], 0, -1, "none", "none", 0xFFFFFFFF);
    g_DynamicObject[615] = CreateObject(19814, -1586.7275, -2568.9091, -5.3572, 0.0000, 0.0000, 31.5998); //ElectricalOutlet2
    SetObjectMaterial(g_DynamicObject[615], 0, -1, "none", "none", 0xFFFFFFFF);
    g_DynamicObject[616] = CreateObject(2710, -1586.9139, -2558.2163, -5.8579, 0.0000, 0.0000, -10.6000); //WATCH_PICKUP
    g_DynamicObject[617] = CreateObject(19814, -1577.7440, -2565.5334, -5.3372, 0.0000, 0.0000, -59.2999); //ElectricalOutlet2
    SetObjectMaterial(g_DynamicObject[617], 0, -1, "none", "none", 0xFFFFFFFF);
    g_DynamicObject[618] = CreateObject(19828, -1576.5544, -2567.5166, -5.8958, 0.0000, 0.0000, -58.8997); //LightSwitch3Off
    SetObjectMaterial(g_DynamicObject[618], 0, -1, "none", "none", 0xFFFFFFFF);
    g_DynamicObject[619] = CreateObject(19828, -1580.4023, -2564.7138, -5.8962, 0.0000, 0.0000, -149.8999); //LightSwitch3Off
    SetObjectMaterial(g_DynamicObject[619], 0, -1, "none", "none", 0xFFFFFFFF);
    g_DynamicObject[620] = CreateObject(19828, -1595.3243, -2575.1950, -5.8958, 0.0000, 0.0000, -58.8997); //LightSwitch3Off
    SetObjectMaterial(g_DynamicObject[620], 0, -1, "none", "none", 0xFFFFFFFF);
    g_DynamicObject[621] = CreateObject(3007, -1576.0533, -2709.1694, 1.0497, 28.0000, 64.0005, -54.1002); //chopcop_torso
    SetObjectMaterial(g_DynamicObject[621], 0, 3899, "hospital2", "burnt_faggots64", 0xFF696969);
    g_DynamicObject[622] = CreateObject(19883, -1582.8415, -2569.7453, -5.9454, 0.0000, 0.0000, 0.0000); //BreadSlice1
    SetObjectMaterial(g_DynamicObject[622], 0, -1, "none", "none", 0xFFCD853F);
    g_DynamicObject[623] = CreateObject(19481, -1579.8620, -2734.5368, 6.7227, 0.0000, 0.0000, 89.9999); //subdock mazarot
    SetDynamicObjectMaterialText(g_DynamicObject[623], 0, "MAZAROT", OBJECT_MATERIAL_SIZE_512x256, "Verdana", 50, 1, 0xFF000000, 0x00000000, 1);
    g_DynamicObject[624] = CreateObject(1886, -1520.9061, -2725.0769, 13.4547, 15.0999, 0.0000, -86.5998); //shop_sec_cam
    g_DynamicObject[625] = CreateObject(1886, -1514.0266, -2665.1638, -2.3229, 39.4000, 0.0000, -100.8999); //shop_sec_cam
    g_DynamicObject[626] = CreateObject(1886, -1573.9090, -2697.9213, 6.0521, 54.4999, 0.0000, 119.9000); //shop_sec_cam
    g_DynamicObject[627] = CreateObject(1886, -1583.0234, -2697.3913, 6.1750, 36.2000, 0.0000, 38.0998); //shop_sec_cam
    g_DynamicObject[628] = CreateObject(19477, -1581.3579, -2696.4355, 2.8125, 0.0000, 0.0000, -90.0000); //transformer maintena
    SetDynamicObjectMaterialText(g_DynamicObject[628], 0, "transformer maintenance", OBJECT_MATERIAL_SIZE_512x256, "Segoe Print", 30, 1, 0xFFFF0000, 0x00000000, 1);
    g_DynamicObject[629] = CreateObject(1886, -1573.3138, -2571.0380, -2.8901, 20.3999, 0.0000, 166.3999); //shop_sec_cam
    g_DynamicObject[630] = CreateObject(19805, -1581.4477, -2696.4689, 2.5492, 0.0000, 0.0000, -179.9998); //Whiteboard1
    g_DynamicObject[631] = CreateObject(19477, -1581.3579, -2696.4355, 2.9825, 0.0000, 0.0000, -90.0000); //to do list
    SetDynamicObjectMaterialText(g_DynamicObject[631], 0, "To do list:", OBJECT_MATERIAL_SIZE_512x256, "Segoe Print", 30, 1, 0xFFFF0000, 0x00000000, 1);
    g_DynamicObject[632] = CreateObject(19477, -1581.4283, -2696.4355, 2.6431, -0.4999, 0.0000, -90.0000); //submarine maintenanc
    SetDynamicObjectMaterialText(g_DynamicObject[632], 0, "submarine maintenance", OBJECT_MATERIAL_SIZE_512x256, "Segoe Print", 30, 1, 0xFFFF0000, 0x00000000, 1);
    g_DynamicObject[633] = CreateObject(18868, -1575.0760, -2710.8891, 1.0411, 0.0000, 0.0000, -136.6999); //MobilePhone4
    g_DynamicObject[634] = CreateObject(1492, -1577.9300, -2561.5458, 27.8204, 0.0000, 0.0000, -58.5998); //Gen_doorINT02
    SetObjectMaterial(g_DynamicObject[634], 0, -1, "none", "none", 0xFFD2691E);
    SetObjectMaterial(g_DynamicObject[634], 1, 14526, "sweetsmain", "ah_whitpanelceil", 0x00000000);
    g_DynamicObject[635] = CreateObject(19273, -1575.3502, -2564.5258, 29.0475, 0.0000, 0.0000, 30.3999); //KeypadNonDynamic
    g_DynamicObject[636] = CreateObject(19273, -1575.4906, -2564.4299, 29.0475, 0.0000, 0.0000, -149.2996); //KeypadNonDynamic
    g_DynamicObject[637] = CreateObject(1492, -1580.9768, -2563.3688, 27.8204, 0.0000, 0.0000, -58.5998); //Gen_doorINT02
    SetObjectMaterial(g_DynamicObject[637], 0, -1, "none", "none", 0xFFD2691E);
    SetObjectMaterial(g_DynamicObject[637], 1, 14526, "sweetsmain", "ah_whitpanelceil", 0x00000000);
    g_DynamicObject[638] = CreateObject(19377, -1583.9038, -2572.7385, -7.0633, 0.0000, 270.0000, 31.0000); //big floor
    SetObjectMaterial(g_DynamicObject[638], 0, 14537, "pdomebar", "club_floor2_sfwTEST", 0x00000000);
    g_DynamicObject[639] = CreateObject(19273, -1571.8480, -2562.6437, -5.8523, 0.0000, 0.0000, -59.2000); //KeypadNonDynamic
    g_DynamicObject[640] = CreateObject(19476, -1590.7757, -2565.0964, -5.3520, 0.0000, 0.0000, 120.3998); //do not disturb
    SetDynamicObjectMaterialText(g_DynamicObject[640], 0, "DO NOT DISTURB!", OBJECT_MATERIAL_SIZE_512x256, "Impact", 81, 1, 0xFF000000, 0x00000000, 1);
    g_DynamicObject[641] = CreateObject(19797, -1590.7812, -2565.0654, -5.1606, 0.0000, 0.0000, -149.0997); //PoliceVisorStrobe1
    SetObjectMaterial(g_DynamicObject[641], 0, 19523, "sampicons", "reeedgrad32", 0x00000000);
    g_DynamicObject[642] = CreateObject(19273, -1577.7386, -2559.6494, 29.0475, 0.0000, 0.0000, 30.1000); //KeypadNonDynamic
    g_DynamicObject[643] = CreateObject(19273, -1578.4073, -2559.0930, 29.0475, 0.0000, 0.0000, -149.3999); //KeypadNonDynamic
    g_DynamicObject[644] = CreateObject(19273, -1569.5758, -2566.3840, 29.0475, 0.0000, 0.0000, -60.0998); //KeypadNonDynamic
    g_DynamicObject[645] = CreateObject(19476, -1577.3592, -2562.1643, 30.3987, 0.0000, 0.0000, 31.7999); //locker room
    SetDynamicObjectMaterialText(g_DynamicObject[645], 0, "LOCKER ROOM", OBJECT_MATERIAL_SIZE_512x256, "Impact", 110, 1, 0xFF000000, 0x00000000, 1);
    g_DynamicObject[646] = CreateObject(19273, -1575.2519, -2569.3332, -5.8523, 0.0000, 0.0000, 121.3000); //KeypadNonDynamic
    g_DynamicObject[647] = CreateObject(19273, -1575.3890, -2569.4152, -5.8523, 0.0000, 0.0000, -59.2000); //KeypadNonDynamic
    g_DynamicObject[648] = CreateObject(19273, -1572.4680, -2571.2143, -5.8523, 0.0000, 0.0000, -150.6999); //KeypadNonDynamic
    g_DynamicObject[649] = CreateObject(19273, -1572.4200, -2571.3376, -5.8523, 0.0000, 0.0000, 31.4001); //KeypadNonDynamic
    g_DynamicObject[650] = CreateObject(19273, -1580.0937, -2553.8398, -5.8523, 0.0000, 0.0000, 31.4001); //KeypadNonDynamic
    g_DynamicObject[651] = CreateObject(19273, -1580.1649, -2553.7202, -5.8523, 0.0000, 0.0000, -148.1999); //KeypadNonDynamic
    g_DynamicObject[652] = CreateObject(19273, -1519.4952, -2662.4431, -5.8523, 0.0000, 0.0000, -150.4998); //KeypadNonDynamic
    g_DynamicObject[653] = CreateObject(19273, -1519.4339, -2662.5612, -5.8523, 0.0000, 0.0000, 30.2000); //KeypadNonDynamic
    g_DynamicObject[654] = CreateObject(19273, -1520.0837, -2665.0253, -5.8523, 0.0000, 0.0000, 120.7001); //KeypadNonDynamic
    g_DynamicObject[655] = CreateObject(19273, -1520.2080, -2665.0917, -5.8523, 0.0000, 0.0000, -59.7998); //KeypadNonDynamic
    g_DynamicObject[656] = CreateObject(19273, -1576.2004, -2697.8730, 2.6672, 0.0000, 0.0000, 120.7001); //KeypadNonDynamic
    g_DynamicObject[657] = CreateObject(19273, -1576.3492, -2697.9562, 2.6672, 0.0000, 0.0000, -59.9998); //KeypadNonDynamic
    g_DynamicObject[658] = CreateObject(19610, -1589.1804, -2571.2834, -4.1230, -144.2397, 0.0000, 32.0998); //Microphone1
    SetObjectMaterial(g_DynamicObject[658], 0, -1, "none", "none", 0xFF696969);

    g_Vehicle[0] = CreateVehicle(509, -1506.5611, -2658.3071, -6.4211, 95.5743, 0, 0, 20); //Bike
    g_Vehicle[1] = CreateVehicle(530, -1582.5765, -2705.8889, 1.7796, 183.5193, 0, 0, 20); //Forklift

    g_DynamicActor[ACTOR_ENTRY_GUARD] = CreateDynamicActor(71, -1570.8188, -2569.7690, 28.7656, 31.2999, .streamdistance = 50.0);
    g_DynamicActor[ACTOR_HOMELESS] = CreateDynamicActor(78, -1510.5262, -2660.7250, -6.6230, 32.5998, .streamdistance = 50.0);
    g_DynamicActor[ACTOR_STAIRWAY_GUARD_1] = CreateDynamicActor(166, -1586.2397, -2561.5456, 0.1483, -59.2999, .streamdistance = 50.0);
    g_DynamicActor[ACTOR_MECHANIC] = CreateDynamicActor(50, -1603.0024, -2721.0073, 3.8322, 0.0000, .streamdistance = 50.0);
    g_DynamicActor[ACTOR_STAIRWAY_GUARD_2] = CreateDynamicActor(165, -1578.9365, -2554.5410, 23.1464, 125.4999, .streamdistance = 50.0);
    g_DynamicActor[ACTOR_RECEPTION_GUARD_1] = CreateDynamicActor(166, -1574.5638, -2563.5524, -5.2494, 123.5998, .streamdistance = 50.0);
    g_DynamicActor[ACTOR_CAMERAMAN] = CreateDynamicActor(98, -1590.0212, -2570.8911, -6.2136, -132.8000, .streamdistance = 50.0);
    g_DynamicActor[ACTOR_VIP] = CreateDynamicActor(147, -1588.7939, -2571.8769, -5.8014, 45.4998, .streamdistance = 50.0);
    g_DynamicActor[ACTOR_RECEPTION_GUARD_2] = CreateDynamicActor(165, -1575.6761, -2564.2697, -5.3976, -58.7999, .streamdistance = 50.0);
    g_DynamicActor[ACTOR_CHEF] = CreateDynamicActor(210, -1585.1816, -2569.4069, -6.3586, -55.0998, .streamdistance = 50.0);
    g_DynamicActor[ACTOR_BARTENDER] = CreateDynamicActor(59, -1581.4663, -2575.1784, -5.9857, 17.5998, .streamdistance = 50.0);
    g_DynamicActor[ACTOR_FOREMAN] = CreateDynamicActor(153, -1579.3376, -2709.1928, 2.0455, -87.9999, .streamdistance = 50.0);
    g_DynamicActor[ACTOR_RECEPTIONIST] = CreateDynamicActor(150, -1581.7580, -2557.0976, -5.7504, -111.6996, .streamdistance = 50.0);
    g_DynamicActor[ACTOR_IT_SUPPORT] = CreateDynamicActor(289, -1581.0035, -2558.0080, -5.4780, -57.0000, .streamdistance = 50.0);
    g_DynamicActor[ACTOR_STYLIST] = CreateDynamicActor(3, -1592.8725, -2579.3640, -6.1553, 125.3999, .streamdistance = 50.0);
}

DestroyGeneralItems()
{
    for(new idx, idx_limit = sizeof g_VehicleObject; idx < idx_limit; idx ++)
	{
        DestroyObject(g_VehicleObject[idx]);
    }

    for(new idx, idx_limit = sizeof g_DynamicObject; idx < idx_limit; idx ++)
	{
        DestroyDynamicObject(g_DynamicObject[idx]);
    }

    for(new idx, idx_limit = sizeof g_Vehicle; idx < idx_limit; idx ++)
	{
        DestroyVehicle(g_Vehicle[idx]);
    }

    for(new idx, idx_limit = sizeof g_DynamicActor; idx < idx_limit; idx ++)
	{
        DestroyActor(g_DynamicActor[idx]);
    }
}

void UnfreezeLoadTexture(playerid, time, status)
{
	gLoadTime{playerid}++;
	if(gLoadTime{playerid} > 4)
	{
		if(status == TYPE_SHOW_TD)
    	{
    		for(new i; i < 60; i++)
    		{
    			if(i < 4) TextDrawHideForPlayer(playerid, load_texture[i]);
    			PlayerTextDrawHide(playerid, load_texture_p[playerid][i]);
    		}
	  	}
        TogglePlayerControllable(playerid, 1);
        gLoadTime{playerid} = 0;
        return true;
	}
	if(status == TYPE_SHOW_TD)
	{
		switch(gLoadTime{playerid})
		{
			case 1: for(new i = 0; i < 15; i++) PlayerTextDrawShow(playerid, load_texture_p[playerid][i]);
			case 2: for(new i = 15; i < 30; i++) PlayerTextDrawShow(playerid, load_texture_p[playerid][i]);
			case 3: for(new i = 30; i < 45; i++) PlayerTextDrawShow(playerid, load_texture_p[playerid][i]);
			case 4: for(new i = 45; i < 60; i++) PlayerTextDrawShow(playerid, load_texture_p[playerid][i]);
		}
	}
	SetTimerEx("UnfreezeLoadTexture", time, false, "iii", playerid, time, status);
    return true;
}

void Refresh(playerid)
{
	new Float:pos[3];
	GetVehiclePos(GetPlayerVehicleID(playerid), pos[0], pos[1], pos[2]);
	new Float:rot = PointAngle(playerid, pos[0], pos[1], GPSInfo[pNavID[playerid]+GetPVarInt(playerid, "GPSID")][gLoc][0], GPSInfo[pNavID[playerid]+GetPVarInt(playerid, "GPSID")][gLoc][1]);
    AttachObjectToVehicle(ok[playerid], GetPlayerVehicleID(playerid), 0.000000, 0.000000, 1.399998, 0.000000, 90.0, rot + 180);
	//AttachObjectToVehicle(ok[playerid], GetPlayerVehicleID(playerid), 0.000000, 0.000000, 1.399998, 0.000000, 90.0, rot + 180);
	new Float:mesafe, str[32];
	mesafe = GetPlayerDistanceFromPoint(playerid, GPSInfo[pNavID[playerid]+GetPVarInt(playerid, "GPSID")][gLoc][0], GPSInfo[pNavID[playerid]+GetPVarInt(playerid, "GPSID")][gLoc][1], GPSInfo[pNavID[playerid]+GetPVarInt(playerid, "GPSID")][gLoc][2]);
	format(str, sizeof(str), "Distance Left: ~y~%0.2fm", mesafe);
	PlayerTextDrawSetString(playerid, NAVpTD[playerid], str);
	if(IsPlayerInRangeOfPoint(playerid, 10.0, GPSInfo[pNavID[playerid]+GetPVarInt(playerid, "GPSID")][gLoc][0], GPSInfo[pNavID[playerid]+GetPVarInt(playerid, "GPSID")][gLoc][1], GPSInfo[pNavID[playerid]+GetPVarInt(playerid, "GPSID")][gLoc][2]))
	{
		KillTimer(pNavTimer[playerid]);
		DestroyDynamicObject(ok[playerid]);
		for(new i; i<sizeof(NAVTD); i++) TextDrawHideForPlayer(playerid, NAVTD[i]);
		PlayerTextDrawHide(playerid, NAVpTD[playerid]);
		DisablePlayerCheckpoint(playerid);
		PlayerPlaySound(playerid, 1137,0.0,0.0,0.0);
		SetPVarInt(playerid, "GPS", 0);
		SendClientMessage(playerid, COLOR_GREEN, "[G] Вы достигли точки назначения. Глобальная позиционная система автоматически переключена в энергосберегающий режим.");
	}
	return true;
}

void ClearAnimText(playerid) return ApplyAnimation(playerid, "CARRY", "crry_prtial" ,4.0 , 0 , 0 , 0 , 0 , 0);
void SecTimer()
{
    new newhour,newminute,newsecond;
    gettime(newhour, newminute, newsecond);
	PayDayTimer();
	MiniMap_DoubleHome();
	MiniMap_SecondaryATM();
	if((newhour > ghour) || (newhour == 0 && ghour == 23))
    {
        ghour = newhour;
	    if(ghour == 0 || ghour == 3 || ghour == 6 || ghour == 9 || ghour == 12 || ghour == 15 || ghour == 18 || ghour == 21 && TOTALCARGO <= 0)
		{
			TOTALCARGO = 500;
			lines = "";
			format(lines, 128, "[W] Мешков: {e2ba00}%d из 500", TOTALCARGO);
		    Update3DTextLabelText(CargoText[0], -1, lines);
		    SendClientMessageToAll(0x008D03AA,"[W] На склад привезли груз. Ждём рабочих.");
		}
	}
	foreach(new i : Player)
	{
		if(!GetPVarInt(i, "Logged"))
		{
			SetPVarInt(i, "TimeLogged", GetPVarInt(i,"TimeLogged") +1);
			if(GetPVarInt(i,"TimeLogged") > 180)
			{
				SendClientMessage(i, COLOR_LIGHTRED, LoggedTimeOver);
				DeletePVar(i, "TimeLogged");
				KickFromServer(i);
			}
			continue;
		}
		if(GetPVarInt(i, "Flood") > 30) KickFromServer(i);
		if(GetPlayerState(i) == PLAYER_STATE_DRIVER) SpeedSecond(i);
		if(GetPVarInt(i, "pMuted") > 0)
		{
		    SetPVarInt(i, "pMuted", GetPVarInt(i, "pMuted")-1);
            SetPlayerInt(GetName(i), "Mute", GetPVarInt(i, "pMuted"));
            if(GetPVarInt(i, "pMuted") <= 0)
            {
                SetPlayerInt(GetName(i), "Mute", GetPVarInt(i, "pMuted"));
                SetPVarInt(i, "pMuted", 0);
				SendClientMessage(i, COLOR_CREAM, "[S] Заглушка игрового чата автоматически прекращена в результате истечения таймера.");
			}
		}
	}
	if(TOTALTREE == 37)
	{
	    for(new i; i < sizeof(Wood); i++)
		{
	    	DestroyObject(gWood[i]);
	    	gWood[i] = CreateObject(616, Wood[i][0], Wood[i][1], Wood[i][2], 0.0000000,0.0000000,0.0000000);
		}
		TOTALTREE = 0;
	}
	if(Timer == 10)
	{
		for(new Vehicleid; Vehicleid < MAX_VEHICLES; ++Vehicleid)
 		{
		  	if(GetGVarInt("Engine", Vehicleid) && !GetGVarFloat("Fuel", Vehicleid))
			{
				GetVehicleParamsEx(Vehicleid,Vehicle[0],Vehicle[1],Vehicle[2],Vehicle[3],Vehicle[4],Vehicle[5],Vehicle[6]);
				SetVehicleParamsEx(Vehicleid,VEHICLE_PARAMS_OFF,Vehicle[1],Vehicle[2],Vehicle[3],Vehicle[4],Vehicle[5],Vehicle[6]);
		 		DeleteGVar("Engine", Vehicleid);
			}
			else if(GetGVarInt("Engine", Vehicleid) && GetGVarFloat("Fuel", Vehicleid) > 0.0) SetGVarFloat("Fuel", GetGVarFloat("Fuel", Vehicleid)-0.5, Vehicleid);
	    }
		Timer = 0;
	}
	else ++Timer;
}

void OnPlayerLogin(playerid)
{
	SendClientMessage(playerid, -1, "{0F8FCD}[W] Приветствуем Вас на сервере "NameServer"!");
	SendClientMessage(playerid, COLOR_WHITE, "[*] - Владыка сервера доволен тем, что Вы добровольно вступили в ряд людей, помещенных в игровую реальность.");
	SetPlayerPos(playerid, 1955.6603,1626.5211,36.9891);
	SetPlayerCameraPos(playerid, 2061.7566,1677.0413,70.8934);
	SetPlayerCameraLookAt(playerid, 2036.4026,1664.2031,64.3515);

	new rows, fields;
	cache_get_data(rows, fields);
    if(rows)
	{
	    PlayAudioStreamForPlayer(playerid, "http://127.0.0.1/start.mp3", 0.0, 0.0, 0.0);
        format(lines, 200, "{FFFFFF}Добро пожаловать на сервер "NameServer"\n{FFFFFF}Ваш ник зарегистрирован\n\nЛогин:{6699FF} %s\n{FFFFFF}Введите пароль:",GetName(playerid));
		ShowPlayerDialog(playerid, D_LOG, d_Input, "{6699FF}Авторизация", lines, "Вход","Выход");
    }
    else
    {
        PlayAudioStreamForPlayer(playerid, "http://127.0.0.1/royal.mp3", 0.0, 0.0, 0.0);
        for(new i; i < 52; ++i) PlayerTextDrawShow(playerid, RegAuth[i]);
        SelectTextDraw(playerid, COLOR_PURPLE);
	}
	return true;
}

void BadLogin(playerid, pass[])
{
    new rows, fields;
	cache_get_data(rows, fields);
    if(!rows) return true;
    cache_get_row(0, 2, var);
    if(!strcmp(pass, var, true)) return LoadAccount(playerid);
    else
    {
  		if(!GetPVarInt(playerid, "wrongPass")) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Неверный ввод пароля 3 раза, для выхода из игры введите: {FFFFFF}/q(uit)"), KickFromServer(playerid);
  		SetPVarInt(playerid, "wrongPass", GetPVarInt(playerid, "wrongPass")-1);
   		format(lines, 170, "{FFFFFF}Добро пожаловать на сервер "NameServer"\n{FFFFFF}Ваш ник зарегистрирован\n\nЛогин:{6699FF} %s\n{FF6347}Неверный пароль! Осталось попыток: %i",GetName(playerid), GetPVarInt(playerid, "wrongPass"));
		ShowPlayerDialog(playerid, D_LOG, d_Input, "{6699FF}Авторизация", lines, "Вход","Выход");
  	}
    return true;
}

void LoadAcc(playerid)
{
	new rows, fields;
    cache_get_data(rows, fields);
	if(!rows) return true;
	SetPVarInt(playerid, "pID", cache_get_row_int(0, 0));
	cache_get_row(0, 2, cDataInfo[playerid][pPassword], Mysql, 32);
	cache_get_row(0, 3, cDataInfo[playerid][IP], Mysql, 16);
	SetPVarInt(playerid, "pAdmin", cache_get_row_int(0, 4));
	cache_get_row(0, 5, cDataInfo[playerid][pAdmPassword], Mysql, 32);
	cache_get_row(0, 6, cDataInfo[playerid][pMail], Mysql, 64);
	SetPVarInt(playerid, "pLevel", cache_get_row_int(0, 7));
    SetPVarInt(playerid, "pCash", cache_get_row_int(0, 8));
	SetPVarInt(playerid, "Bank", cache_get_row_int(0, 9));
    SetPVarInt(playerid, "pExp", cache_get_row_int(0, 10));
	cache_get_row(0, 11, cDataInfo[playerid][pRegData], Mysql, 16);
	SetPVarInt(playerid, "pLeader", cache_get_row_int(0, 12));
	SetPVarInt(playerid, "pMember", cache_get_row_int(0, 13));
 	SetPVarInt(playerid, "pRank", cache_get_row_int(0, 14));
	SetPVarInt(playerid, "pWarn", cache_get_row_int(0, 15));
	SetPVarInt(playerid, "pSex", cache_get_row_int(0, 16));
	SetPVarInt(playerid, "pModel", cache_get_row_int(0, 17));
	SetPVarInt(playerid, "pChar", cache_get_row_int(0, 18));
	cache_get_row(0, 19, cDataInfo[playerid][pLics], Mysql, 16);
	cache_get_row(0, 20, cDataInfo[playerid][pGuns], Mysql, 40);
	cache_get_row(0, 21, cDataInfo[playerid][pAmmos], Mysql, 160);
	cache_get_row(0, 22, cDataInfo[playerid][pSkills], Mysql, 40);
	SetPVarInt(playerid, "pMuted", cache_get_row_int(0, 23));
	SetPVarInt(playerid, "pJail", cache_get_row_int(0, 24));
	SetPVarInt(playerid, "pWanted", cache_get_row_int(0, 25));
	SetPVarFloat(playerid, "pHeal", cache_get_row_float(0, 26));
	SetPVarInt(playerid, "pDrugs", cache_get_row_int(0, 27));
	SetPVarInt(playerid, "pMats", cache_get_row_int(0, 28));
	SetPVarInt(playerid, "pSpawns", cache_get_row_int(0, 29));
	SetPVarInt(playerid, "pTS1", cache_get_row_int(0, 30));
	SetPVarInt(playerid, "pTS2", cache_get_row_int(0, 31));
	SetPVarInt(playerid, "pTS3", cache_get_row_int(0, 32));
	SetPVarInt(playerid, "pTS4", cache_get_row_int(0, 33));
	SetPVarInt(playerid, "pTS5", cache_get_row_int(0, 34));
	SetPVarInt(playerid, "pJob", cache_get_row_int(0, 35));
	cache_get_row(0, 36, cDataInfo[playerid][pMarried], Mysql, MAX_PLAYER_NAME);
	SetPVarInt(playerid, "pAge", cache_get_row_int(0, 37));
	cache_get_row(0, 38, cDataInfo[playerid][pNation], Mysql, 38);
	SetPVarInt(playerid, "pAKey", cache_get_row_int(0, 39));
	SetPVarInt(playerid, "pPhone", cache_get_row_int(0, 40));
	SetPVarInt(playerid, "pExtra", cache_get_row_int(0, 41));
	SetPVarInt(playerid, "pTicket", cache_get_row_int(0, 42));
	SetSpawnInfo(playerid, 255, GetPVarInt(playerid, "pModel"), 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0);
	SetPVarInt(playerid, "TimeLogged", -1);
	SetPVarInt(playerid, "Logged", 1);
	SpawnPlayer(playerid);
	return true;
}

void LoadOrg()
{
    new time = GetTickCount();
    new rows, fields;
    cache_get_data(rows, fields);
	for(new i; i < TOTALBIZZ; i++) strmid(BizzInfo[i][bOwner],"None",0,strlen("None"),32);
	if(!rows) return true;
	for(new idx; idx < rows; idx++)
	{
        BizzInfo[idx+1][id] = cache_get_field_content_int(idx, "id", Mysql);
        cache_get_field_content(idx, "owner", BizzInfo[idx+1][bOwner], Mysql, sizeof(var));
        BizzInfo[idx+1][bType] = cache_get_field_content_int(idx, "type", Mysql);
        BizzInfo[idx+1][bPrice] = cache_get_field_content_int(idx, "price", Mysql);
        BizzInfo[idx+1][bMoney] = cache_get_field_content_int(idx, "money", Mysql);
        BizzInfo[idx+1][bEntrx] = cache_get_field_content_float(idx, "x", Mysql);
        BizzInfo[idx+1][bEntry] = cache_get_field_content_float(idx, "y", Mysql);
        BizzInfo[idx+1][bEntrz] = cache_get_field_content_float(idx, "z", Mysql);
        BizzInfo[idx+1][bExitx] = cache_get_field_content_float(idx, "xt", Mysql);
        BizzInfo[idx+1][bExity] = cache_get_field_content_float(idx, "yt", Mysql);
        BizzInfo[idx+1][bExitz] = cache_get_field_content_float(idx, "zt", Mysql);
        BizzInfo[idx+1][bMenux] = cache_get_field_content_float(idx, "menux", Mysql);
        BizzInfo[idx+1][bMenuy] = cache_get_field_content_float(idx, "menuy", Mysql);
        BizzInfo[idx+1][bMenuz] = cache_get_field_content_float(idx, "menuz", Mysql);
        BizzInfo[idx+1][bInt] = cache_get_field_content_int(idx, "vint", Mysql);
        BizzInfo[idx+1][bVW] = cache_get_field_content_int(idx, "virt", Mysql);
        BizzInfo[idx+1][bMIcon] = cache_get_field_content_int(idx, "icon", Mysql);
        cache_get_field_content(idx, "name", BizzInfo[idx+1][bName], Mysql, sizeof(var));
        BizzInfo[idx+1][bEnter] = cache_get_field_content_int(idx, "penter", Mysql);
        BizzInfo[idx+1][bLock] = cache_get_field_content_int(idx, "block", Mysql);
        BizzInfo[idx+1][bProduct] = cache_get_field_content_int(idx, "product", Mysql);
        BizzInfo[idx+1][bTill] = cache_get_field_content_int(idx, "till", Mysql);
        BizzInfo[idx+1][bLockTime] = cache_get_field_content_int(idx, "locktime", Mysql);

		//if(BizzInfo[idx+1][bType] < 22) BizzInfo[TOTALBIZZ][bIcon] = CreateDynamicMapIcon(BizzInfo[idx+1][bEntrx], BizzInfo[idx+1][bEntry], BizzInfo[idx+1][bEntrz], BizzInfo[idx+1][bMIcon], 0, -1, -1, -1,200.0);
		if(BizzInfo[idx+1][bType] < 22)
		{
  			BizzInfo[idx+1][bPickup] = CreatePickup(19135,1, BizzInfo[idx+1][bEntrx],BizzInfo[idx+1][bEntry],BizzInfo[idx+1][bEntrz]);
			BizzInfo[idx+1][bPickupExit] = CreatePickup(19135, 1, BizzInfo[idx+1][bExitx], BizzInfo[idx+1][bExity], BizzInfo[idx+1][bExitz], BizzInfo[idx+1][bVW]);
   			BizzInfo[idx+1][bMenu] = CreateDynamicCP(BizzInfo[idx+1][bMenux], BizzInfo[idx+1][bMenuy], BizzInfo[idx+1][bMenuz], 1.0, BizzInfo[idx+1][bVW], BizzInfo[idx+1][bInt]);
			if(!strcmp(BizzInfo[idx+1][bOwner],"None",true))
			{
				format(lines, 128, "{6699FF}%s\n{FFFFFF}Предприятие продаётся", BizzInfo[idx+1][bName]); LABELBIZZ[idx+1] = Create3DTextLabel(lines,COLOR_GREEN,BizzInfo[idx+1][bEntrx], BizzInfo[idx+1][bEntry], BizzInfo[idx+1][bEntrz],20.0, 0, 1);
			}
			else
			{
				format(lines, 128, "{FFFFFF}{6699FF}%s\n{FFFFFF}Владелец: %s", BizzInfo[idx+1][bName], BizzInfo[idx+1][bOwner]); LABELBIZZ[idx+1] = Create3DTextLabel(lines,COLOR_GREEN,BizzInfo[idx+1][bEntrx], BizzInfo[idx+1][bEntry], BizzInfo[idx+1][bEntrz],20.0, 0, 1);
			}
		}
		else
		{
			if(!strcmp(BizzInfo[idx+1][bOwner], "None", true))
			{
				format(lines, 128, "{6699FF}%s\n{FFFFFF}Предприятие продаётся", BizzInfo[idx+1][bName], BizzInfo[idx+1][bTill] / 3); LABELBIZZ[idx+1] = Create3DTextLabel(lines,COLOR_GREEN,BizzInfo[idx+1][bEntrx], BizzInfo[idx+1][bEntry], BizzInfo[idx+1][bEntrz],20.0, 0, 1);
			}
			else
			{
				format(lines, 128, "{6699FF}%s\n{FFFFFF}Владелец: {6699FF}%s\n{FFFFFF}Цена за 10 литров: {6699FF}%i", BizzInfo[idx+1][bName], BizzInfo[idx+1][bOwner], BizzInfo[idx+1][bTill] / 3); LABELBIZZ[idx+1] = Create3DTextLabel(lines, -1 ,BizzInfo[idx+1][bEntrx], BizzInfo[idx+1][bEntry], BizzInfo[idx+1][bEntrz],20.0, 0, 1);
			}
		}
		TOTALBIZZ++;
    }
    print("*---------------------------------------------------------*");
    return printf("MySQL: Загружено бизнесов    \t\t%i за \t%i м.секунды", TOTALBIZZ, GetTickCount() - time);
}

void LoadFactions()
{
	new time = GetTickCount();
	new rows, fields;
	cache_get_data(rows, fields);
	for(new i; i < TOTALFACTIONS; i++) { }
	if(!rows) return true;
	for(new idx; idx < rows; idx++)
	{
	    FactInfo[idx+1][fID] = cache_get_field_content_int(idx, "fID", Mysql);
		cache_get_field_content(idx, "fOwner", FactInfo[idx+1][fOwner], Mysql, sizeof(var));
		cache_get_field_content(idx, "fName", FactInfo[idx+1][fName], Mysql, sizeof(var));
		FactInfo[idx+1][fsX] = cache_get_field_content_float(idx, "fX", Mysql);
		FactInfo[idx+1][fsY] = cache_get_field_content_float(idx, "fY", Mysql);
		FactInfo[idx+1][fsZ] = cache_get_field_content_float(idx, "fZ", Mysql);
		FactInfo[idx+1][fsInt] = cache_get_field_content_int(idx, "fInt", Mysql);
		cache_get_field_content(idx, "fRank1", FactInfo[idx+1][fRank][0], Mysql, sizeof(var));
		cache_get_field_content(idx, "fRank2", FactInfo[idx+1][fRank][1], Mysql, sizeof(var));
		cache_get_field_content(idx, "fRank3", FactInfo[idx+1][fRank][2], Mysql, sizeof(var));
		cache_get_field_content(idx, "fRank4", FactInfo[idx+1][fRank][3], Mysql, sizeof(var));
		cache_get_field_content(idx, "fRank5", FactInfo[idx+1][fRank][4], Mysql, sizeof(var));
		cache_get_field_content(idx, "fRank6", FactInfo[idx+1][fRank][5], Mysql, sizeof(var));
		cache_get_field_content(idx, "fRank7", FactInfo[idx+1][fRank][6], Mysql, sizeof(var));
		cache_get_field_content(idx, "fRank8", FactInfo[idx+1][fRank][7], Mysql, sizeof(var));
		cache_get_field_content(idx, "fRank9", FactInfo[idx+1][fRank][8], Mysql, sizeof(var));
		cache_get_field_content(idx, "fRank10", FactInfo[idx+1][fRank][9], Mysql, sizeof(var));
		FactInfo[idx+1][fSkin][0] = cache_get_field_content_int(idx, "fSkin1", Mysql);
		FactInfo[idx+1][fSkin][1] = cache_get_field_content_int(idx, "fSkin2", Mysql);
		FactInfo[idx+1][fSkin][2] = cache_get_field_content_int(idx, "fSkin3", Mysql);
		FactInfo[idx+1][fSkin][3] = cache_get_field_content_int(idx, "fSkin4", Mysql);
		FactInfo[idx+1][fSkin][4] = cache_get_field_content_int(idx, "fSkin5", Mysql);
		FactInfo[idx+1][fSalary] = cache_get_field_content_int(idx, "fSalary", Mysql);
		TOTALFACTIONS++;
	}
	return printf("MySQL: Загружено организаций    \t%i за \t%i м.секунды", TOTALFACTIONS, GetTickCount() - time);
}

void LoadHouse()
{
    new rows, fields, time = GetTickCount();
    cache_get_data(rows, fields);
	if(!rows) return true;
	for(new i; i <= rows; ++i) strmid(HouseInfo[i][hOwner], "None", 0, strlen("None"), 32);
	for(new idx, ids = 1; idx < rows; ++idx, ++ids)
	{
	    HouseInfo[ids][hID] = cache_get_row_int(idx, 0);
		HouseInfo[ids][hEntr][0] = cache_get_row_float(idx, 1);
		HouseInfo[ids][hEntr][1] = cache_get_row_float(idx, 2);
		HouseInfo[ids][hEntr][2] = cache_get_row_float(idx, 3);
		HouseInfo[ids][hExit][0] = cache_get_row_float(idx, 4);
		HouseInfo[ids][hExit][1] = cache_get_row_float(idx, 5);
		HouseInfo[ids][hExit][2] = cache_get_row_float(idx, 6);
		HouseInfo[ids][hCar][0] = cache_get_row_float(idx, 7);
		HouseInfo[ids][hCar][1] = cache_get_row_float(idx, 8);
		HouseInfo[ids][hCar][2] = cache_get_row_float(idx, 9);
		HouseInfo[ids][hCar][3] = cache_get_row_float(idx, 10);
		cache_get_row(idx, 11, HouseInfo[ids][hOwner], Mysql, 32);
		cache_get_row(idx, 12, HouseInfo[ids][hDiscript], Mysql, 16);
		HouseInfo[ids][hPrice] = cache_get_row_int(idx, 13);
		cache_get_row(idx, 14, HouseInfo[ids][hInt][0], Mysql, 16);
		HouseInfo[ids][hInt][0] = cache_get_row_int(idx, 14);
		HouseInfo[ids][hInt][1] = cache_get_row_int(idx, 15);
		HouseInfo[ids][hLock] = cache_get_row_int(idx, 17);
		cache_get_row(idx, 17, HouseInfo[ids][hCash], Mysql, 16);
		if(!strcmp(HouseInfo[ids][hOwner], "None",true))
        {
            new Float:natmx, Float:natmy, Float:natmz;
    		GetMiniMapCoord(HouseInfo[ids][hEntr][0], HouseInfo[ids][hEntr][1], natmx, natmy, natmz);
			CreateObject(31, natmx, natmy, natmz, 90.00, 0, 0.0);
        	//HouseInfo[ids][hMIcon] = CreateDynamicMapIcon(HouseInfo[ids][hEntr][0], HouseInfo[ids][hEntr][1], HouseInfo[ids][hEntr][2], 31, 0,-1,-1,-1,200.0);
       		HouseInfo[ids][hPickup][0] = CreatePickup(1273, 1, HouseInfo[ids][hEntr][0], HouseInfo[ids][hEntr][1], HouseInfo[ids][hEntr][2]);
       	}
       	else
       	{
       	    //HouseInfo[ids][hMIcon] = CreateDynamicMapIcon(HouseInfo[ids][hEntr][0], HouseInfo[ids][hEntr][1], HouseInfo[ids][hEntr][2], 32, 0,-1,-1,-1,200.0);
      		HouseInfo[ids][hPickup][0] = CreatePickup(1272, 1, HouseInfo[ids][hEntr][0], HouseInfo[ids][hEntr][1], HouseInfo[ids][hEntr][2]);
       	}
       	++TOTALHOUSE;
  	}
	return printf("MySQL: Загружено домов      \t\t%i за \t%i м.секунды", TOTALHOUSE, GetTickCount() - time);
}

void LoadEnters()
{
    new time = GetTickCount();
    new rows, fields;
    cache_get_data(rows, fields);
	if(!rows) return true;
	for(new idx; idx != rows; idx++)
	{
		EntersInfo[idx+1][id] = cache_get_field_content_int(idx, "ID", Mysql);
	    EntersInfo[idx+1][pX] = cache_get_field_content_float(idx, "X", Mysql);
	    EntersInfo[idx+1][pY] = cache_get_field_content_float(idx, "Y", Mysql);
	    EntersInfo[idx+1][pZ] = cache_get_field_content_float(idx, "Z", Mysql);
        EntersInfo[idx+1][pM] = cache_get_field_content_int(idx, "M", Mysql);
        EntersInfo[idx+1][pT] = cache_get_field_content_int(idx, "T", Mysql);
        EntersInfo[idx+1][pI] = cache_get_field_content_int(idx, "I", Mysql);
        EntersInfo[idx+1][pV] = cache_get_field_content_int(idx, "V", Mysql);
        EntersInfo[idx+1][ptX] = cache_get_field_content_float(idx, "TX", Mysql);
        EntersInfo[idx+1][ptY] = cache_get_field_content_float(idx, "TY", Mysql);
        EntersInfo[idx+1][ptZ] = cache_get_field_content_float(idx, "TZ", Mysql);
        EntersInfo[idx+1][ptFa] = cache_get_field_content_float(idx, "TFA", Mysql);
        EntersInfo[idx+1][ptI] = cache_get_field_content_int(idx, "TI", Mysql);
        EntersInfo[idx+1][ptV] = cache_get_field_content_int(idx, "TV", Mysql);
        cache_get_field_content(idx, "Name", EntersInfo[idx+1][Name], Mysql, sizeof(query));
    	EntersInfo[idx+1][pP] = CreatePickup(EntersInfo[idx+1][pM], 1, EntersInfo[idx+1][pX], EntersInfo[idx+1][pY], EntersInfo[idx+1][pZ],EntersInfo[idx+1][pV]);
        CreateDynamic3DTextLabel(EntersInfo[idx+1][Name], COLOR_GRELIN, EntersInfo[idx+1][pX], EntersInfo[idx+1][pY], EntersInfo[idx+1][pZ], 5.0, INVALID_PLAYER_ID,INVALID_VEHICLE_ID,1, EntersInfo[idx+1][pV], EntersInfo[idx+1][pI]);
		TOTALENTERS++;
   	}
   	return printf("MySQL: Загружено входов    \t\t%i за \t%i м.секунды", TOTALENTERS,GetTickCount() - time);
}

void LoadATM()
{
	new time = GetTickCount();
    new rows, fields;
    cache_get_data(rows, fields);
	if(!rows) return true;
	for(new idx; idx < rows; idx++)
	{
		cache_get_row(idx, 0, var), ATMInfo[idx+1][id] = strval(var);
 		cache_get_row(idx, 1, var), ATMInfo[idx+1][aX] = floatstr(var);
  		cache_get_row(idx, 2, var), ATMInfo[idx+1][aY] = floatstr(var);
   		cache_get_row(idx, 3, var), ATMInfo[idx+1][aZ] = floatstr(var);
    	cache_get_row(idx, 4, var), ATMInfo[idx+1][arZ] = floatstr(var);
    	TOTALATM++;
    	ATM[idx+1] = CreateObject(2754, ATMInfo[idx+1][aX], ATMInfo[idx+1][aY], ATMInfo[idx+1][aZ], 0.0, 0.0, ATMInfo[idx+1][arZ]);
    	LABELATM[idx+1] = CreateDynamic3DTextLabel("{6699FF}Терминал\n{C3C3C3}Нажмите ALT",COLOR_GREEN, ATMInfo[idx+1][aX],ATMInfo[idx+1][aY],ATMInfo[idx+1][aZ],20.0);
		//new Float:natmx, Float:natmy, Float:natmz;
    	//GetMiniMapCoord(ATMInfo[idx+1][aX], ATMInfo[idx+1][aY], natmx, natmy, natmz);
    	//CreateObject(19177, natmx, natmy, natmz, 90.00, 0, 0.0);
 	}
 	return printf("MySQL: Загружено терминалов\t\t%i за \t%i м.секунды", TOTALATM,GetTickCount() - time);
}

void LoadGPS()
{
    new rows, fields, time = GetTickCount();
    cache_get_data(rows, fields);
	if(!rows) return true;
	for(new idx, ids = 1; idx < rows; ++idx, ++ids)
	{
	    GPSInfo[ids][gID] = cache_get_row_int(idx, 0);
	    cache_get_row(idx, 1, GPSInfo[ids][gName], Mysql, 64);
	    GPSInfo[ids][gLoc][0] = cache_get_row_float(idx, 2);
	    GPSInfo[ids][gLoc][1] = cache_get_row_float(idx, 3);
	    GPSInfo[ids][gLoc][2] = cache_get_row_float(idx, 4);
	    GPSInfo[ids][gType] = cache_get_row_int(idx, 5);
    	++TOTALGPS;
	}
	printf("MySQL: Загружено локаций    \t\t%i за \t%i м.секунды", TOTALGPS,GetTickCount() - time);
	return print("*---------------------------------------------------------*");
}

void Shop(playerid)
{
	if(IsPlayerInRangeOfPoint(playerid, 4.0, 1764.6361, -1885.7416, 14.8846))
	{
		Mark[playerid] = 2, Delete3DTextLabel(Marks[1]);
		Market[playerid] = 1;
		format(lines, 245, "{FFFFFF}Лазерные указки\nСостояние: {CC00CC}Открыто\n{FFFFFF}Продавец: {6699FF}%s", GetName(playerid));
		Update3DTextLabelText(A_Shop[0], 0xFFFFFF, lines);
	}
	return true;
}

void SaveVehicles(vidS)
{
	new M_OWNER[24], M_PLATE[32];
	mysql_real_escape_string(VehicleInfo[vidS][vOwner], M_OWNER);
	mysql_real_escape_string(VehicleInfo[vidS][vPlate], M_PLATE);
	format(query, sizeof(query), "UPDATE `"TABLE_CARS"` SET `vModel` = %i, `vColor1` = %i, `vColor2` = %i, `vPrice` = %i, `vOwner` = '%s', `vPosX` = %f, `vPosY` = %f, `vPosZ` = %f, `vPosA` = %f, `vPlate` = '%s',\
	`Locked` = %i WHERE `vID` = %i LIMIT 1",
	VehicleInfo[vidS][vModel], VehicleInfo[vidS][vColor1], VehicleInfo[vidS][vColor2], VehicleInfo[vidS][vPrice],
	M_OWNER, VehicleInfo[vidS][vPosX], VehicleInfo[vidS][vPosY], VehicleInfo[vidS][vPosZ], VehicleInfo[vidS][vPosA],
	M_PLATE, VehicleInfo[vidS][vLocked], vidS);
	return mysql_function_query(Mysql, query, false, "", "");
}

void OnPlayerName(inputtext[], playerid)
{
	new rows, fields;
	cache_get_data(rows, fields);
    if(rows)
	{
		ShowPlayerDialog(playerid, D_ADMIN+2, d_Input, "{6699FF}Имя игрока", "{FFFFFF}Введите желаемый ник для игрока:", "Сменить", "Назад");
		SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Данное имя уже используется на сервере.");
    }
    else
    {
		SetPlayerStr(GetName(playerid), "Name", inputtext);
		if(GetPlayerBizz(playerid))
		{
		    strmid(BizzInfo[GetPVarInt(playerid, "PlayerBizz")][bOwner], inputtext, 0, strlen(inputtext), MAX_PLAYER_NAME);
		    SetBizzStr(GetPVarInt(playerid, "PlayerBizz"), "Owner", inputtext);
		    UpdateBizz(GetPVarInt(playerid, "PlayerBizz"));
		}
		if(GetPlayerHouse(playerid))
		{
            strmid(HouseInfo[GetPVarInt(playerid, "PlayerHouse")][hOwner], inputtext, 0, strlen(inputtext), MAX_PLAYER_NAME);
			SetHouseStr(GetPVarInt(playerid, "PlayerHouse"), "Owner", inputtext);
		}
    }
    return true;
}

void CheckBank(playerid)
{
    query = "";
	format(query, sizeof(query), "SELECT * FROM bank WHERE fix = '1' AND playerid = '%d'", GetPVarInt(playerid, "pID"));
	mysql_function_query(Mysql, query, true, "CheckBankMoney", "d", playerid);
	return true;
}

void CheckBankMoney(playerid)
{
    new rows,fields;
	cache_get_data(rows, fields);
	if(rows < 1)
	{
		CheckNewBank[playerid] = 1;
		return true;
	}
	SetPVarInt(playerid, "pBank", cache_get_field_content_int(0, "money", Mysql));
	return true;
}

void InfoAccountBank(playerid)
{
    new rows, fields;
	cache_get_data(rows, fields);
	if(rows < 1) return true;
	lines = "";
	new aid, amoney, name[24];
 	aid = cache_get_field_content_int(0, "id", Mysql);
 	amoney = cache_get_field_content_int(0, "money", Mysql);
 	cache_get_field_content(0, "name", name, Mysql, sizeof(query));
 	CheckBank(playerid);
 	lines = "";
	format(lines, sizeof(lines), "{FFFFFF}Номер счета:\t\t\t{81CB00}№%d{FFFFFF}\nНазначение:\t\t\t{81CB00}%s{FFFFFF}\nБаланс:\t\t\t{61BC00}{81CB00}%d$", aid,name,amoney);
	ShowPlayerDialog(playerid, D_BANK+10, d_Box, "{6699FF}Информация о счете", lines, "Назад", "Выход");
	return true;
}

void GetPinAccountBank(playerid)
{
    new rows, fields;
	cache_get_data(rows, fields);
	if(rows < 1) return ShowPlayerDialog(playerid,0, d_Box,"{6699FF}Ошибка", "{FFFFFF}Неверно указан PIN-код счета.", "Закрыть", "");
	CheckBank(playerid);
	ShowPlayerDialog(playerid, D_BANK+4, d_List,"{6699FF}Банковские операции", "1. Информация о счете\n2. История операций\n3. Снять деньги\n4. Положить деньги\n5. Перевести на другой счет\n6. Изменить PIN-код", "Выбрать", "Назад");
	return true;
}

void LoadAccountBank(playerid)
{
    new rows,fields;
	cache_get_data(rows,fields);
	if(rows < 1) return ShowPlayerDialog(playerid, D_NULL, d_Box, "{6699FF}Мои счета", "{FFFFFF}У Вас еще не создано открытых счетов.", "Выход", "");
	lines = "";
	new str[128], name[54], ida;
	for(new idx; idx != rows; idx++)
	{
	    cache_get_field_content(idx, "name", name, Mysql, sizeof(query));
	    ida = cache_get_field_content_int(idx, "id", Mysql);
		format(str, sizeof(str), "%s №%d\n", name, ida);
		strcat(lines, str);
	}
	CheckBank(playerid);
	ShowPlayerDialog(playerid, D_BANK+1, d_List, "{6699FF}Мои счета", lines, "Выбрать", "Выход");
	return true;
}

void GetBankMoney(playerid, money)
{
    new rows, fields;
	cache_get_data(rows, fields);
	if(rows < 1) return true;
	lines = "";
	new bmoney;
 	bmoney = cache_get_field_content_int(0, "money", Mysql);
    if(bmoney >= money)
	{
		query = "";
		format(query, 256, "UPDATE `bank` SET `money` = `money` - '%d' WHERE id = '%d'", money, GetPVarInt(playerid,"AccountBank"));
		mysql_function_query(Mysql, query, false, "", "");
        GiveMoney(playerid, money);
        CheckBank(playerid);
		lines = "";
		format(lines, sizeof(lines), "{ffffff}Счет:\t\t\t\t{f26c00}№%d{ffffff}\nВы сняли:\t\t\t{7eb900}%d$\n{ffffff}Старый баланс:\t\t{7eb900}%d$\n{ffffff}Текущий баланс:\t\t{7eb900}%d$", GetPVarInt(playerid,"AccountBank"),money,bmoney,bmoney-money);
		ShowPlayerDialog(playerid, D_BANK+10, d_Box, "{6699FF}Снять деньги", lines, "Назад", "Выход");
	}
	else
	{
		ShowPlayerDialog(playerid, D_BANK+10, d_Box, "{6699FF}Снять деньги", "{FF7D3D}На Вашем счете недостаточно средств.", "Назад", "Выход");
	}
	return true;
}

void PutBankMoney(playerid, money)
{
    new rows, fields;
	cache_get_data(rows, fields);
	if(rows < 1) return true;
	lines = "";
	new bmoney;
 	bmoney = cache_get_field_content_int(0, "money", Mysql);
    if(GetMoney(playerid) >= money)
	{
		query = "";
		format(query, 256, "UPDATE `bank` SET `money` = `money` + '%d' WHERE id = '%d'", money, GetPVarInt(playerid,"AccountBank"));
		mysql_function_query(Mysql, query, false, "", "");
        GiveMoney(playerid, -money);
        CheckBank(playerid);
		lines = "";
		format(lines, sizeof(lines), "{ffffff}Счет:\t\t\t\t{f26c00}№%d{ffffff}\nВы положили:\t\t{7eb900}%d$\n{ffffff}Старый баланс:\t\t{7eb900}%d$\n{ffffff}Текущий баланс:\t\t{7eb900}%d$", GetPVarInt(playerid,"AccountBank"),money,bmoney,bmoney+money);
		ShowPlayerDialog(playerid, D_BANK+10, d_Box, "{6699FF}Положить деньги", lines, "Назад", "Выход");
	}
	else
	{
		ShowPlayerDialog(playerid, D_BANK+10, d_Box, "{6699FF}Положить деньги", "{FF7D3D}На Вашем счете недостаточно средств.", "Назад", "Выход");
	}
	return true;
}

void LogAccountBank(playerid)
{
    new rows,fields;
	cache_get_data(rows,fields);
	if(rows < 1) return ShowPlayerDialog(playerid, D_BANK+10, d_Box, "{6699FF}История переводов", "{FFFFFF}История переводов пуста.", "Назад", "Выход");
	lines = "";
	CheckBank(playerid);
	new str[128],data[24],outid,bmoney;
	for(new idx; idx != rows; idx++)
	{
		outid = cache_get_field_content_int(idx, "outid", Mysql);
		bmoney = cache_get_field_content_int(idx, "money", Mysql);
		cache_get_field_content(idx, "data", data, Mysql, sizeof(query));
		format(str, sizeof(str), "{F26C00}%s{FFFFFF} | Перевод {7eb900}%d${ffffff} на счет {f26c00}№%d\n", data,bmoney,outid);
		strcat(lines, str);
	}
	ShowPlayerDialog(playerid, D_BANK+10, d_Box, "{6699FF}История операций", lines, "Назад", "Выход");
	return true;
}

void OnPlayerExitCar(playerid)
{
	new t_str[128];
	if(PlayerExitCount[playerid] > 3 && PlayerExitCount[playerid] < 11)
	{
 		format(t_str, sizeof(t_str), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~%d", PlayerExitCount[playerid]);
   		GameTextForPlayer(playerid, t_str, 900, 3);
	}
	if(PlayerExitCount[playerid] > 0 && PlayerExitCount[playerid] < 4)
	{
 		format(t_str, sizeof(t_str), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~n~~r~%d", PlayerExitCount[playerid]);
		GameTextForPlayer(playerid, t_str, 900, 3);
	}
	if(PlayerExitCount[playerid] == 0)
	{
		new vehicleid = GetPlayerRentTaxi[playerid];
		for(new d=0; d<MAX_PLAYERS; d++)
		{
			if(IsPlayerConnected(d) && IsTaxiCar(GetPlayerVehicleID(d))) RemovePlayerFromVehicle(d);
		}
	  	KillTimer(ExitCarTimer[playerid]);
		GetPlayerRentTaxi[playerid] = INVALID_VEHICLE_ID;
		TaxiJobStarted[playerid] = false;
		PlayerTaxiStarted[playerid] = false;
		SetVehicleToRespawn(vehicleid);
		for(new d=0; d<MAX_PLAYERS; d++)
		{
	    	if(IsPlayerConnected(d) && PlayerCalledTaxi[d]) RemovePlayerMapIcon(playerid, d);
	  	}
	}
 	else
 	{
		PlayerExitCount[playerid] -= 1;
 	}
 	return true;
}

void OnPlayerFinishedRace(playerid)
{
	TogglePlayerControllable(playerid, true);
	PlayerService[GetPlayerCarPass(playerid)] = playerid;
	RemovePlayerFromVehicle(GetPlayerCarPass(playerid));
	return true;
}

void OnPlayerShowTaxiDialog(playerid)
{
	if(PlayerRentTaxi[playerid])
	{
		new t_str[128];
		format(t_str, sizeof(t_str), "{FFFFFF}\
  		Чтобы работать водителем скотовозки, Вам необходимо его арендовать.\n\
		Цена аренды: {CECECE}%d$", TAXI_PRICERENT);
		ShowPlayerDialog(playerid, D_TD, DIALOG_STYLE_MSGBOX, "{AFE01B}Аренда скотовозки", t_str, "Да", "Нет");
 	}
 	else
 	{
		ShowPlayerDialog(playerid, 00000, 0, "", "", "", "");
		KillTimer(TaxiDialogTimer[playerid]);
 	}
 	return true;
}

stock IsTaxiCar(vehicleid)
{
	for(new i=0; i<MAX_TAXI; i++)
	{
	    if(vehicleid == TAXI_ID[i]) return 1;
	}
	return 0;
}

stock GetPriceTaxi(playerid)
{
	new Float:dist = floatsqroot(floatpower(floatabs(floatsub(LASTPOS[playerid][0],FIRSTPOS[playerid][0])),2)
	+floatpower(floatabs(floatsub(LASTPOS[playerid][1],FIRSTPOS[playerid][1])),2)
	+floatpower(floatabs(floatsub(LASTPOS[playerid][2],FIRSTPOS[playerid][2])),2));
	return floatround(dist*TAXI_PRICEROUT);
}

stock IsPlayerInWater(playerid)
{
	new anim = GetPlayerAnimationIndex(playerid);
	if (((anim >= 1538) && (anim <= 1542)) || (anim == 1544) || (anim == 1250)) return true;
	return false;
}

stock GetPriceTaxiEx(playerid)
{
	new Float:POS[3];
	GetPlayerPos(playerid, POS[0], POS[1], POS[2]);
    new Float:dist = floatsqroot(floatpower(floatabs(floatsub(POS[0],FIRSTPOS[playerid][0])),2)
	+floatpower(floatabs(floatsub(POS[1],FIRSTPOS[playerid][1])),2)
	+floatpower(floatabs(floatsub(POS[2],FIRSTPOS[playerid][2])),2));
	return floatround(dist*TAXI_PRICEROUT);
}

stock GetPlayerCarDriver(playerid)
{
   	for(new i=0; i<MAX_PLAYERS; i++)
	{
   		if(IsPlayerConnected(i) && GetPlayerVehicleSeat(i) == 0 && GetPlayerVehicleID(i) == GetPlayerVehicleID(playerid) && TaxiJobStarted[i]) return i;
   	}
	return INVALID_PLAYER_ID;
}

stock GetPlayerPoint(playerid)
{
	new zone[32],bool:getzone;
    for(new i=0; i<sizeof(gZoneInfo); i++)
    {
       	if(LASTPOS[playerid][0] >= gZoneInfo[i][SAZONE_AREA][0]
		&& LASTPOS[playerid][0] <= gZoneInfo[i][SAZONE_AREA][3]
		&& LASTPOS[playerid][1] >= gZoneInfo[i][SAZONE_AREA][1]
		&& LASTPOS[playerid][1] <= gZoneInfo[i][SAZONE_AREA][4])
       	{
        	format(zone, sizeof(zone), gZoneInfo[i][SAZONE_NAME]);
        	getzone = true;
        	break;
       	}
    }
    if(!getzone) zone = "Неизвестно";
    return zone;
}

stock GetPlayerZone(playerid)
{
	new Float:POS[3], zone[32], bool:getzone;
	GetPlayerPos(playerid, POS[0], POS[1], POS[2]);
    for(new i = 0; i < sizeof(gZoneInfo); i++)
    {
       	if(POS[0] >= gZoneInfo[i][SAZONE_AREA][0]
	    && POS[0] <= gZoneInfo[i][SAZONE_AREA][3]
	    && POS[1] >= gZoneInfo[i][SAZONE_AREA][1]
		&& POS[1] <= gZoneInfo[i][SAZONE_AREA][4])
       	{
        	format(zone, sizeof(zone), gZoneInfo[i][SAZONE_NAME]);
        	getzone = true;
        	break;
       	}
    }
    if(!getzone) zone = "Неизвестно";
    return zone;
}

stock GetPlayerCarPass(playerid)
{
   	for(new i = 0; i < MAX_PLAYERS; i++)
	{
   		if(IsPlayerConnected(i) && GetPlayerVehicleSeat(i) != 0 && GetPlayerVehicleID(i) == GetPlayerVehicleID(playerid)) return i;
   	}
	return INVALID_PLAYER_ID;
}

stock Gps_Activate(playerid)
{
	if(cDataInfo[playerid][pGPS] <= 1) GangZoneHideForPlayer(playerid, GZ_ZONE);
	if(cDataInfo[playerid][pGPS] == 0) GZ_ZONE = GangZoneCreate(-2976.5625, -3421.875, 3609.375, 2953.125), GangZoneShowForPlayer(playerid, GZ_ZONE, 0x000000FF);
}

CreateSelectionMenu(playerid)
{
	gBackgroundTextDrawId[playerid] = CreatePlayerBackgroundTextDraw(playerid, DIALOG_BASE_X, DIALOG_BASE_Y + 20.0, DIALOG_WIDTH, DIALOG_HEIGHT);
	gHeaderTextDrawId[playerid] = CreatePlayerHeaderTextDraw(playerid, DIALOG_BASE_X, DIALOG_BASE_Y);
	ShowPlayerModelPreviews(playerid);
}

stock Tranquilizator(playerid)
{
	// ДОРАБОТКА!
	SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Транквилизатор находится в стадии разработки. Пожалуйста, закройте панель во избежание утечки памяти.");
	DestroySelectionMenu(playerid);
	SetPVarInt(playerid, "skinc_active", 1);
	CreateSelectionMenu(playerid);
	SelectTextDraw(playerid, 0xACCBF1FF);
	return true;
}

void GatWood(playerid)
{
    KillTimer(WoodTimer[playerid]);
	DestroyObject(gWood[GetPVarInt(playerid, "Wood")]);
	DisablePlayerCheckpoint(playerid);
	WoodP[GetPVarInt(playerid, "Wood")] = CreatePickup(1463, 3, Wood[GetPVarInt(playerid, "Wood")][0], Wood[GetPVarInt(playerid, "Wood")][1], Wood[GetPVarInt(playerid, "Wood")][2]+1.5,0);
    return false;
}

void Quit(playerid) return Kick(playerid);

void ClearText(playerid) return ApplyAnimation(playerid,"CARRY","crry_prtial",4.1,0,0,0,0,0);

public OnPlayerCommandText(playerid, cmdtext[])
{
	return false;
}

public OnPlayerCommandReceived(playerid, cmd[], params[], flags)
{
//    if ((flags & CMD_ADMIN) && !pAdmin[playerid])
//        return false;
    if(!IsPlayerConnected(playerid) || !GetPVarInt(playerid,"Logged")) return false;
	if(GetPVarInt(playerid,"AntiFlood") > gettime())
	{
		SendClientMessage(playerid, COLOR_LIGHTRED, NoFlood);
		SetPVarInt(playerid, "Flood", GetPVarInt(playerid, "Flood") +5);
		return false;
	}
//	printf("Игрок: '%s' использовал команду '%s'", GetName(playerid), cmd[]);
    return true;
}

public OnPlayerCommandPerformed(playerid, cmd[], params[], result, flags)
{
    if(result == -1)
    {
        SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
        return 0;
    }
    SetPVarInt(playerid,"AntiFlood", gettime() +1);
    return true;
}

cmd:testgun(playerid, params[])
{
	if(GetPVarInt(playerid, "pMember") == 0) SetPVarInt(playerid, "pMember", 7);
	if(GetPVarInt(playerid, "pMember") == 7) SetPVarInt(playerid, "pMember", 0);
	SetPVarInt(playerid, "pAug", 1);
	GivePlayerWeapon(playerid, 24, 50);
	GivePlayerWeapon(playerid, 38, 50);
	return GivePlayerWeapon(playerid, 31, 50);
}

cmd:unrent(playerid, params[])
{
    if(!TaxiJobStarted[playerid]) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не арендовывали скотовозку.");
	ShowPlayerDialog(playerid, D_TD+3, DIALOG_STYLE_MSGBOX, "{6699FF}Отмена аренды", "{FFFFFF}Вы действительно хотите отменить аренду скотовозки?", "Да", "Нет");
	return true;
}

cmd:vamque(playerid, params[])
{
	return ShowPlayerDialog(playerid, D_VAMPIRIC, d_List, "{6699FF}Вампирическая система квестов", "1. —", "Выбрать", "Выход");
}

cmd:ambient(playerid, params[])
{
	StopAudioStreamForPlayer(playerid);
 	return ShowPlayerDialog(playerid, D_AMBIENT, d_List, "{6699FF}Звуковое сопровождение", "1. Delicious\n2. Oblicious\n3. Fergallicious\n4. Semsilipious\n5. Slizirionus\n6. Vantous\n7. Rocious", "Выбрать", "Выход");
}

cmd:aug(playerid, params[])
{
	if(GetPVarInt(playerid, "pAug") == 0) SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не агументированный.");
	return ShowPlayerDialog(playerid, D_AUG, d_List, "{6699FF}Аугментации", "1. Социальный корректор\n2. Радарная система 'Следопыт'\n3. Инфолинк\n4. Монитор скрытности\n5. Конвертер энергии\n6. Возвратное дыхание\n7. { Киборгизация }", "Выбрать","Выход");
}

cmd:rules(playerid, params[])
{
    format(ShowRulesDialog, sizeof(ShowRulesDialog), "%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s",
	RulesDialog[0], RulesDialog[1], RulesDialog[2], RulesDialog[3], RulesDialog[4], RulesDialog[5], RulesDialog[6], RulesDialog[7], RulesDialog[8], RulesDialog[9], RulesDialog[10], RulesDialog[11], RulesDialog[12], RulesDialog[13], RulesDialog[14], RulesDialog[15], RulesDialog[16], RulesDialog[17]);
	ShowPlayerDialog(playerid, D_NULL, d_Box, "{6699FF}Правила сервера", ShowRulesDialog, "Выход", "");
	return true;
}

cmd:pmenu(playerid, params[]) return callcmd::setup(playerid, "");
cmd:help(playerid, params[]) return callcmd::setup(playerid, "");
cmd:setup(playerid, params[])
{
    return ShowPlayerDialog(playerid, D_MENU, d_List, "{6699FF}Меню игрока", "1. Статистика\n2. Команды сервера\n3. Правила сервера\n4. Помощь по серверу\n5. Настройки безопасности\n6. Улучшения\n7. Личные настройки\n8. Связь с администрацией\n9. Траквилизатор", "Выбрать", "Выход");
} 

cmd:pass(playerid, params[])
{
	if(sscanf(params, "u", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /pass [ID игрока]");
	if(!IsPlayerConnected(params[0]) || !GetPVarInt(params[0],"Logged")) return true;
	return Passport(params[0]);
}

cmd:glasses(playerid, params[])
{
    if(GetPVarInt(playerid, "pAdmin") < 3 || GetPVarInt(playerid,"AdmLogged") == 1) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
	if(sscanf(params, "i", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[CMD] Используйте: /glasses [ID от 0 до 3]");
	if(params[0] < 0 || params[0] > 3) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] ID от 0 до 3.");
	RemovePlayerAttachedObject(playerid, 2);
	switch(params[0])
	{
	    case 1: SetPlayerAttachedObject(playerid,2, 19006, 2, 0.1, 0.03, 0.0, 0.0, 90.0, 90.0);
	    case 2: SetPlayerAttachedObject(playerid,2, 19007, 2, 0.1, 0.03, 0.0, 0.0, 90.0, 90.0);
	    case 3: SetPlayerAttachedObject(playerid,2, 19008, 2, 0.1, 0.03, 0.0, 0.0, 90.0, 90.0);
	}
	return true;
}
/*
		1. Иллюминаты
		2. Маджестик-12
		3. Интерпол
		4. Новые Сыны Свободы
		5. Национальные Сепаратистские Войска
		6. UNATCO
		7. Партизаны
		8. ООН
		9. Управление полиции ЛС
		10. Управление полиции ЛВ
		11. FEMA
		12. ТВ Центр
*/

cmd:guild(playerid, params[])
{
	ShowPlayerDialog(playerid, D_GUILD, d_List, "{6699FF}Информация о гильдиях", "1. Коалиция за права аугментированных\n2. Создать гильдию", "Выбрать", "Выход");
	return true;
}

cmd:fracti(playerid, params[])
{
	ShowPlayerDialog(playerid, D_FRACTI, d_List, "{6699FF}Информация о фракциях", "1. Маджестик-12\n2. Интерпол\n3. Новые Сыны Свободы\n4. Национальные Сепаратистские Войска\n5. UNATCO\n6. Партизаы\n7. ООН\n8. ПЛС\n9. ПЛВ\n10. FEMA\n11. ТВ Центр", "Выбрать", "Выход");
	return true;
}

cmd:fraction(playerid, params[])
{
    if(!GetPVarInt(playerid, "Logged")) return true;
    new full = 0;
	query = "", lines = "";
    strcat(query, "Организация - Должность - Имя - Телефон\n\n");
	foreach(new i: Player)
	{
	    if(!GetPVarInt(i, "Logged")) continue;
		if(GetPVarInt(i, "pLeader") > 0)
		{
			full++;
  			format(lines, sizeof(lines), "{FFFFFF}%s - %s - %s - %i\n", Fractions_Type(i), Ranks_Type(i), GetName(i), GetPVarInt(i, "pPhone"));
  			strcat(query, lines);
  			if(full == 0) return format(lines, sizeof(lines), "{FFFFFF}Лидеры в сети SA-MP не обнаружены.");
		}
		ShowPlayerDialog(playerid, D_NULL, d_Box, "{6699FF}Руководители онлайн", query, "Закрыть", "");
 	}
  	if(full == 0) SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Лидеры в сети SA-MP не обнаружены.");
	return true;
}

cmd:view(playerid, params[])
{
	if(!GetPVarInt(playerid, "Logged")) return true;
    if(GetPVarInt(playerid, "pMember") == 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас нет полномочий на использование данной команды.");
    new full = 0;
	query = "", lines = "";
    strcat(query,"Имя - Ранг - Уровень - ID\n\n");
	foreach(new i: Player)
	{
	    if(!GetPVarInt(i, "Logged")) continue;
		if(GetPVarInt(i, "pMember") == GetPVarInt(i, "pMember"))
		{
			full++;
  			format(lines, sizeof(lines),"{ffffff}%s - %s - %i - ID:%i\n", GetName(i), Ranks_Type(i), GetPVarInt(i, "pLevel"), i);
  			strcat(query, lines);
  			if(full == 0) return format(lines, sizeof(lines), "{FFFFFF}Члены организаций в сети SA-MP не обнаружены.");
		}
		ShowPlayerDialog(playerid, D_NULL, d_Box,"{6699FF}Члены организации в сети", query,"Закрыть","");
 	}
	return true;
}

cmd:id(playerid, params[])
{
    if(sscanf(params, "u", params[0])) return SendClientMessage(playerid, COLOR_WHITE, "[C.M.D] Используйте: /id [Ник Игрока]");
	if(params[0] == INVALID_PLAYER_ID) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Игрок не авторизован в сети / недоступен.");
	SendMes(playerid, COLOR_WHITE, "[S] ID Игрока: %d - %s", params[0], GetName(params[0]));
	return true;
}

cmd:mimic(playerid, params[])
{
    if(sscanf(params, "u", params[0])) return SendClientMessage(playerid, COLOR_WHITE, "[C.M.D] Используйте: /mimic [ID Игрока]");
    // ДОРАБОТАТЬ!!!
	return true;
}

cmd:invite(playerid, params[])
{
    if(InvitePlayer(playerid) != 0)
    {
	   	if(sscanf(params, "u", params[0])) return SendClientMessage(playerid, COLOR_WHITE, "[C.M.D] Используйте: /invite [ID Игрока]");
		if(GetPVarInt(params[0], "pMember") > 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Игрок состоит в другой организации.");
		if(GetPVarInt(params[0], "pWarn") != 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У игрока есть активные предупреждения (Warn).");
		if(GetPVarInt(params[0], "pAdmin") != 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не можете принять администратора.");
		if(GetPVarInt(params[0], "pLevel") < 2) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У игрока уровень должен быть 2 и более.");
		if(IsPlayerInAnyVehicle(params[0])) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Игрок не должен находиться в транспорте.");
		if(!IsPlayerInRangeOfPlayer(15.0, playerid, params[0])) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Игрок находится слишком далеко от Вас.");
		SendMes(playerid, COLOR_BLUE, "[F]Вы предложили %s присоединиться к вашей организации", GetName(params[0]));
		lines = "";
		SetPVarInt(params[0], "PlayerInvite", playerid);
		format(lines,128,"{FFFFFF}%s предлагает Вам присоединиться к \"%s\"\n\nВы согласны?", GetName(playerid));
		ShowPlayerDialog(params[0], D_FRACTION, d_Box, "{6699FF}Приглашение", lines, "Да", "Нет");
	}
	else SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас нет полномочий на использование данной команды.");
	return true;
}

cmd:uninvite(playerid, params[])
{
    if(UnInvitePlayer(playerid) != 0)
	{
	   	if(sscanf(params, "u", params[0])) return SendClientMessage(playerid, COLOR_WHITE, "[C.M.D] Используйте: /uninvite [ID Игрока]");
		if(GetPVarInt(params[0], "pMember") == 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Игрок не состоит в организации.");
		if(GetPVarInt(params[0], "pMember") != GetPVarInt(playerid, "pMember")) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Игрок находится в другой организации.");
        if(GetPVarInt(params[0], "pRank") >= GetPVarInt(playerid, "pRank")) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Игрок такого же ранга/старше Вас рангом.");
		SendMes(playerid, COLOR_BLUE, "[F] Вы уволили %s из организации \"%s\"", GetName(params[0]));
		SendMes(params[0], COLOR_BLUE, "[F] %s уволил Вас из организации \"%s\"", GetName(playerid));
		LeaveFractionPlayer(params[0]);
	}
	else SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас нет полномочий на использование данной команды.");
	return true;
}

cmd:escape(playerid, params[])
{
	if(GetPVarInt(playerid, "pMember") == 0) SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не состоите в организации");
	LeaveFractionPlayer(playerid);
    SendMes(playerid, COLOR_BLUE, "[F] %s покинул организацию по собственному желанию", GetName(playerid)); // ERROR #1
	return true;
}

cmd:gps1(playerid, params[])
{
    GangZoneHideForPlayer(playerid, GZ_ZONE);
	cDataInfo[playerid][pGPS] = 1;
	return true;
}

cmd:gps(playerid, params[])
{
    if(!cDataInfo[playerid][pGPS]) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас нет глобальной позиционной системы.");
    if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы должны находиться в транспорте для использования этой команды.");
	if(GetPVarInt(playerid,"GPS"))
	{
	    KillTimer(pNavTimer[playerid]);
		DestroyObject(ok[playerid]);
		for(new i; i < sizeof(NAVTD); i++) TextDrawHideForPlayer(playerid, NAVTD[i]);
		PlayerTextDrawHide(playerid, NAVpTD[playerid]);
		PlayerPlaySound(playerid,1137,0.0,0.0,0.0);
		DisablePlayerCheckpoint(playerid);
		pNavState[playerid] = 0;
	   	DeletePVar(playerid,"GPS");
   		DisablePlayerRaceCheckpoint(GPS_ACTIVE[playerid]);
   		//RemovePlayerMapIcon(playerid, 99);
   		format(lines, sizeof(lines), "{990000}ТЕКУЩЕЕ МЕСТОПОЛОЖЕНИЕ: %s\n1. Тестовые локации", GetPlayerZone(playerid));
	   	ShowPlayerDialog(playerid, D_GPS, d_Headers, "{6699FF}Навигация", lines, "Выбрать", "Выход");
	}
	else
	{
	    format(lines, sizeof(lines), "{990000}ТЕКУЩЕЕ МЕСТОПОЛОЖЕНИЕ: %s\n1. Тестовые локации", GetPlayerZone(playerid));
	   	ShowPlayerDialog(playerid, D_GPS, d_Headers, "{6699FF}Навигация", lines, "Выбрать", "Выход");
	}
	return true;
}

cmd:phone(playerid, params[])
{
    if(GetPVarInt(playerid, "pPhone") == 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас нет мобильного телефона.");
	ShowPlayerDialog(playerid, D_MOBILE, d_List, "{6699FF}Сотовый телефон", "1. Посмотреть баланс\n2. Телефонная книга\n3. Добавить контакт\n4. Вкл/Откл телефон", "Выбрать", "Выход");
	return true;
}

cmd:incar(playerid, params[])
{
	if(!IsACop(playerid)) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас нет полномочий на использование данной команды.");
	if(sscanf(params, "u", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /incar [ID Игрока]");
	if(IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не должны находиться в транспорте для использования этой команды.");
	if(params[0] == playerid) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не можете запихнуть машину самого себя.");
	if(PlayerCuffed[params[0]] == false) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Игрок должен быть оглушен или находиться в наручниках.");
	if(!IsPlayerInRangeOfPlayer(8.0, playerid, params[0])) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Игрок находится далеко от радиуса действия.");
	new seat = GetFreeSeat(GetPlayerVehicleID(playerid));
	SetPlayerSpecialAction(params[0], SPECIAL_ACTION_CUFFED);
    TogglePlayerControllable(params[0], 0);
	PutPlayerInVehicle(params[0], GetPlayerVehicleID(playerid), seat); // Доработать! БЛИЖАЙШИЙ ТРАНСПОРТ ПОЛИЦИИ
	return true;
}

cmd:sign(playerid, params[])
{
	if(IsACop(playerid))
	{
	}
	else SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас нет полномочий на использование данной команды.");
	return true;
}

cmd:star(playerid, params[])
{
    if(IsACop(playerid))
	{
		if(sscanf(params, "us", params[0], params[1])) return SendClientMessage(playerid, COLOR_WHITE, "[C.M.D] Используйте: /star [ID Игрока] [Причина звезды]");
		//if(cDataInfo[params[0]][pJail] > 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Данный игрок находится в тюрьме.");
		if(IsACop(params[0])) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Данный игрок состоит в государственных органах.");
		if(cDataInfo[params[0]][pWanted] >= 6) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не можете повесить более 6 звёзд на игрока.");
		cDataInfo[params[0]][pWanted]++;
		if(cDataInfo[params[0]][pWanted] - 1 == 0) cDataInfo[params[0]][pWantedTime] = 1800 + random(300);
		SetPlayerWantedLevel(params[0], cDataInfo[params[0]][pWanted]);
		SetPlayerCriminal(params[0], GetName(playerid), params[1]);
	}
	else SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас нет полномочий на использование данной команды.");
	return true;
}

cmd:jail(playerid, params[])
{
    if(!IsACop(playerid)) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас нет полномочий на использование данной команды.");
	if(sscanf(params, "u", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /jail [ID Игрока]");
	if(params[0] == playerid) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не можете надевать наручники на себя.");
	if(!IsPlayerInRangeOfPlayer(8.0, playerid, params[0])) return SendClientMessage(playerid, COLOR_GREY, "[!] Игрок находится далеко от радиуса действия.");
    if(IsACop(params[0])) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Данный игрок состоит в государственных органах.");
    if(PlayerCuffed[params[0]] == true) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] На игрока уже надеты наручники.");
    SendMes(playerid, 0x6495EDFF, "[P] Вы надели наручники на %s", GetName(params[0]));
    SendMes(params[0], 0x6495EDFF, "[ME] %s надел на Вас наручники", GetName(playerid));
	SetPlayerAttachedObject(params[0], 5, 19418, 6, -0.011000, 0.028000, -0.022000, -15.600012, -33.699977, -81.700035, 0.891999, 1.000000, 1.168000);
 	SetPlayerSpecialAction(params[0], SPECIAL_ACTION_CUFFED);
    TogglePlayerControllable(params[0], 1);
    PlayerCuffed[params[0]] = true;
	return true;
}

cmd:wanted(playerid, params[])
{
	if(IsACop(playerid))
	{
	    new full, str[90];
	    foreach(new i: Player)
	    {
	        if(cDataInfo[i][pWanted] > 0)
	        {
	            lines = "";
		   		format(str, sizeof(str),"{FFFFFF}%s - Уровень розыска: %i\n", GetName(i), cDataInfo[i][pWanted]);
		    	strcat(lines, str);
		    	full++;
	        }
	    }
	    if(full == 0) { lines = "", strcat(lines, "{FFFFFF}Информация не найдена"); }
	    ShowPlayerDialog(playerid,0,DIALOG_STYLE_MSGBOX,"{6699FF}В розыске", lines,"Закрыть","");
	}
	else SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас нет полномочий на использование данной команды.");
	return true;
}

cmd:delete(playerid, params[])
{
    if(IsACop(playerid))
	{
	    if(sscanf(params, "i", params[0])) return SendClientMessage(playerid, COLOR_WHITE, "Введите: /clear [ID Игрока]");
  		if(params[0] == INVALID_PLAYER_ID) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Игрок не обнаружен в сети SA-MP.");
		if(params[0] == playerid) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не можете снять самому себе розыск.");
		SendMes(playerid, 0x6495EDFF, "[P] Вы сняли уровни розыска с %s'а", GetName(params[0]));
		SendMes(params[0], 0x6495EDFF, "[ME] Полицейский %s снял с Вас уровни розыска", GetName(playerid));
		lines = "";
		format(lines, 128, "[F] Полицейский %s зашел(ла) в базу данных полиции", GetName(playerid));
		ProxDetector(playerid, 30.0, COLOR_ORANGE, lines);
		cDataInfo[params[0]][pWanted] =0;
		SetPlayerWantedLevel(params[0], 0);
	}
	else SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас нет полномочий на использование данной команды.");
	return true;
}

cmd:superinvite(playerid, params[])
{
	if(!IsAV(playerid)) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас нет полномочий на использование данной команды.");
	if(sscanf(params, "u", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /superinvite [ID Игрока]");
	if(params[0] == playerid) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не можете выдать удостоверение о службе в армии самому себе.");
    if(!IsPlayerInRangeOfPlayer(8.0, playerid, params[0])) return SendClientMessage(playerid, COLOR_GREY, "[!] Игрок находится далеко от радиуса передачи удостоверения.");
    if(IsACop(params[0])) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Данный игрок состоит в государственных органах.");
    if(PlayerCuffed[params[0]] == true) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У игрока уже есть удостоверение о службе в армии.");
    SendMes(playerid, 0x6495EDFF, "[P] Вы выдали удостоверение о службе в армии %s", GetName(params[0]));
    SendMes(params[0], 0x6495EDFF, "[ME] %s наградил Вас удостоверением о службе в армии", GetName(playerid));
    SetPVarInt(params[0], "pTicket", true);
    SetPlayerInt(GetName(playerid), "Ticket", GetPVarInt(playerid, "pTicket"));
    return true;
}

cmd:unjail(playerid, params[])
{
    if(!IsACop(playerid)) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас нет полномочий на использование данной команды.");
	if(sscanf(params, "u", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /unjail [ID Игрока]");
	if(params[0] == playerid) return SendClientMessage(playerid, COLOR_GREY, "[!] Вы не можете снимать наручники с себя.");
	if(!IsPlayerInRangeOfPlayer(8.0, playerid, params[0])) return SendClientMessage(playerid, COLOR_GREY, "[!] Игрок находится далеко от радиуса действия.");
    if(IsACop(params[0])) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Данный игрок состоит в государственных органах.");
    if(PlayerCuffed[params[0]] == false) return SendClientMessage(playerid, COLOR_GREY, "[!] У игрока уже сняты наручники.");
    SendMes(playerid, 0x6495EDFF, "[P] Вы сняли наручники с %s", GetName(params[0]));
    SendMes(params[0], 0x6495EDFF, "[ME] %s снял с Вас наручники", GetName(playerid));
    RemovePlayerAttachedObject(params[0], 5);
 	SetPlayerSpecialAction(params[0], SPECIAL_ACTION_NONE);
    TogglePlayerControllable(params[0], 1);
    PlayerCuffed[params[0]] = false;
	return true;
}

cmd:taxi(playerid, params[])
{
	new m_lines[128];
	new name[24];GetPlayerName(playerid, name, 24);
	if(TaxiJobStarted[playerid]) return SendClientMessage(playerid, -1, "{27C400}[W] Вам запрещено вызывать скотовозку.");
	if(!PlayerCalledTaxi[playerid])
	{
		PlayerCalledTaxi[playerid] = true;
		SendClientMessage(playerid, -1, "{B5E01B}[M] Вы успешно вызвали скотовозку. Ожидайте её на этом месте.");
		SendClientMessage(playerid, -1, "{B5E01B}[M] Введите: /ctaxi повторно, чтобы отменить вызов скотовозки.");
		format(m_lines, sizeof(m_lines), "{B5E01B}[W] Игрок %s вызвал скотовозку. Район: %s", name, GetPlayerZone(playerid));
		for(new i = 0; i < MAX_PLAYERS; i++)
		{
			if(IsPlayerConnected(i) && TaxiJobStarted[i]) SendClientMessage(i, -1, m_lines);
		}
	}
  	else
	{
		PlayerCalledTaxi[playerid] = false;
		SendClientMessage(playerid, -1, "{B5E01B}[M] Вы отменили вызов скотовозки.");
  		format(m_lines, sizeof(m_lines), "{B5E01B}[M] Игрок %s отменил вызов скотовозки.", name);
		for(new i=0; i<MAX_PLAYERS; i++)
		{
	   		if(IsPlayerConnected(i) && TaxiJobStarted[i])
			{
				SendClientMessage(i, -1, m_lines);
				RemovePlayerMapIcon(i, playerid);
			}
 		}
	}
	return true;
}

cmd:seller(playerid, params[])
{
	if(Markets(playerid)) Shop(playerid);
	return true;
}

cmd:shop(playerid, params[])
{
	if(sscanf(params, "dd", params[0], params[1])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /shop [ID Игрока] [Стоимость Предмета]");
	if(params[1] < 20 || params[1] > 500) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Стоимость предмета от 20 до 500$.");
	new objectives[128];
	Offer[params[0]] = playerid, Opt[params[0]] = params[1], SetPVarInt(params[0], "Sell", 1);
	format(objectives, sizeof(objectives), "{1E90FF}[I] Вы предложили игроку {6699FF}%s {1E90FF}купить лазерную указку за {6699FF}%d$", GetName(params[0]), params[1]);
	SendClientMessage(playerid, 0x1e90ffff, objectives);
	format(objectives, sizeof(objectives), "{1E90FF}[I] Торговец {6699FF}%s {1E90FF}предложил Вам купить лазерную указку за {6699FF}%d$", GetName(playerid), params[1]);
	SendClientMessage(params[0], 0x1e90ffff, objectives);
	SendClientMessage(params[0], 0x6495EDFF, "{1E90FF}[I] Нажмите {03C03C}Y {1E90FF}чтобы приобрести его или {FF7518}N {1E90FF}для отказа");
	return true;
}

cmd:hp(playerid, params[])
{
    if(GetPVarInt(playerid, "pMember") != 15) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас нет полномочий на использование данной команды.");
    if(GetPVarInt(playerid, "pMember") != 16) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас нет полномочий на использование данной команды.");
    if(GetPVarInt(playerid, "pMember") != 17) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас нет полномочий на использование данной команды.");
	if(sscanf(params, "u", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /heal [ID Игрока]");
	if(params[0] == INVALID_PLAYER_ID) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Игрок не обнаружен в сети SA-MP.");
	if(playerid == params[0]) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не можете вылечить самого себя!");
	new Float:shealth;
	GetPlayerHealth(params[0], shealth);
	if(shealth >= 100.0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Этот игрок не нуждается в лечении.");
	SendMes(playerid, 0x6495EDFF, "[P] Вы предложили вылечить %s", GetName(params[0]));
	SendMes(params[0], 0xffffffFF, "{1E90FF}[ME] %s: Предложил Вам вылечиться. Чтобы согласиться нажмите \"{03C03C}Y{1E90FF}\" или \"{FF7518}N{1E90FF} для отказа\"", GetName(playerid));
	SetPVarInt(params[0], "PlayerHeal", playerid);
	SetPVarInt(params[0], "KeyHeal", 1);
	return true;
}

cmd:givelicense(playerid, params[])
{
	if(GetPVarInt(playerid, "pMember") != 2) return true;
	if(GetPVarInt(playerid, "pMember") != 3) return true;
	if(GetPVarInt(playerid, "pRank") < 6) return true;
    if(sscanf(params, "u", params[0])) return SendClientMessage(playerid, COLOR_WHITE, "[C.M.D] Используйте: /givelicense [ID Игрока]");
    if(!IsPlayerInRangeOfPlayer(8.0, playerid, params[0])) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Игрок находится далеко от Вас.");
    SetPVarInt(playerid,"PlayerLic", params[0]);
	ShowPlayerDialog(playerid, D_RULER, d_List, GetName(params[0]), "1. Водительские права\n2. Лицензия на катера\n3. Лицензия на полеты\n4. Лицензия на оружие", "Выбрать", "Выход");
	return true;
}

cmd:inject(playerid, params[])
{
    if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_GREY, "Вы не авто!");
  	if(GetPlayerVehicleID(playerid) >= PDcar[0] && GetPlayerVehicleID(playerid) <= PDcar[56])
	{
		if(sscanf(params, "u", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /inject [ID Игрока]");
   	 	if(!IsPlayerInRangeOfPlayer(8.0, playerid, params[0])) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Игрок находится слишком далеко.");
    	if(PlayerCuffed[params[0]] == false) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У игрока не надеты наручники.");
		if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 523 || GetVehicleModel(GetPlayerVehicleID(playerid)) == 541) PutPlayerInVehicleEx(params[0],GetPlayerVehicleID(playerid),1);
		if(GetVehicleModel(GetPlayerVehicleID(playerid)) >= 596 && GetVehicleModel(GetPlayerVehicleID(playerid)) <= 598) PutPlayerInVehicleEx(params[0],GetPlayerVehicleID(playerid),3+random(1));
		SendMes(playerid,COLOR_BLUE,"[P] Вы затащили %s в машину", GetName(params[0]));
		SendMes(params[0], COLOR_BLUE,"[F] Полицейский %s затащил Вас в машину", GetName(playerid));
		SetPlayerSpecialAction(params[0], SPECIAL_ACTION_NONE);
 		RemovePlayerAttachedObject(params[0],5);
	}
	return true;
}

cmd:r(playerid, params[])
{
	if(GetPVarInt(playerid, "pMember") == 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не состоите в организации!");
	if(sscanf(params, "s[64]", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /r [Текст]");
	format(lines, 128, "[R] %s %s[%d]: %s", Ranks_Type(playerid), GetName(playerid), playerid, params[0]);
	SendRMes(GetPVarInt(playerid, "pMember"), COLOR_GREEN, lines);
	return true;
}

cmd:rn(playerid, params[])
{
	if(GetPVarInt(playerid, "pMember") == 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не состоите в организации!");
	if(sscanf(params, "s[64]", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /rn [Текст]");
	format(lines, 128, "[R] %s %s[%d]: (( %s ))", Ranks_Type(playerid), GetName(playerid), playerid, params[0]);
	SendRMes(GetPVarInt(playerid, "pMember"), COLOR_GREEN, lines);
	return true;
}

cmd:gov(playerid, params[])
{
    if(GetPVarInt(playerid, "pMuted") > 0) { SendMes(playerid, COLOR_LIGHTRED, "[!] У Вас отключен чат. Дождитесь истечения: %i секунд.", GetPVarInt(playerid, "pMuted")); return false; }
    if(GetPVarInt(playerid, "pMember") == 1 || GetPVarInt(playerid, "pMember") == 2 || GetPVarInt(playerid, "pMember") == 3 || GetPVarInt(playerid, "pMember") == 4 || GetPVarInt(playerid, "pMember") == 5)
	{
		if(GetPVarInt(playerid, "pRank") < 9) return SendClientMessage(playerid, COLOR_GREY, "[!] Команда доступна только с 9 ранга.");
	 	if(sscanf(params, "s[100]", params[0])) return SendClientMessage(playerid, COLOR_WHITE, "[C.M.D] Используйте: /gov [Текст]");
		lines = "";
		format(lines, 128, "[G.N]: %s %s[%d]: %s", Ranks_Type(playerid), GetName(playerid), playerid, params[0]);
		SendClientMessageToAll(0x4261bcAA, lines);
	}
    else SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас нет полномочий на использование данной команды.");
    return true;
}

cmd:f(playerid, params[])
{
    if(GetPVarInt(playerid, "pMuted") > 0) { SendMes(playerid, COLOR_LIGHTRED, "[!] У Вас отключен чат. Дождитесь истечения: %i секунд.", GetPVarInt(playerid, "pMuted")); return false; }
	if(sscanf(params, "s[64]", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /f [Текст]");
    if(GetPVarInt(playerid, "pMember") == 1 || GetPVarInt(playerid, "pMember") == 2 || GetPVarInt(playerid, "pMember") == 3 || GetPVarInt(playerid, "pMember") == 4 || GetPVarInt(playerid, "pMember") == 5)
    {
		format(lines, 128, "[F] %s %s[%d]: %s", Ranks_Type(playerid), GetName(playerid), playerid, params[0]);
		SendFMes(COLOR_BLUE, lines);
	}
	return true;
}

cmd:fn(playerid, params[])
{
    if(GetPVarInt(playerid, "pMuted") > 0) { SendMes(playerid, COLOR_LIGHTRED, "[!] У Вас отключен чат. Дождитесь истечения: %i секунд.", GetPVarInt(playerid, "pMuted")); return false; }
	if(sscanf(params, "s[64]", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /fn [Текст]");
    if(GetPVarInt(playerid, "pMember") == 1 || GetPVarInt(playerid, "pMember") == 2 || GetPVarInt(playerid, "pMember") == 3 || GetPVarInt(playerid, "pMember") == 4 || GetPVarInt(playerid, "pMember") == 5)
    {
		format(lines, 128, "[F] %s %s[%d]: (( %s ))", Ranks_Type(playerid), GetName(playerid), playerid, params[0]);
		SendFMes(COLOR_BLUE, lines);
	}
	return true;
}

cmd:n(playerid, params[])
{
    if(GetPVarInt(playerid, "pMuted") > 0) { SendMes(playerid, COLOR_LIGHTRED, "[!] У Вас отключен чат. Дождитесь истечения: %i секунд.", GetPVarInt(playerid, "pMuted")); return false; }
	if(sscanf(params, "s[64]", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /n [Текст]");
	format(lines, 145, "(( %s: %s ))", GetName(playerid), params[0]);
	ProxDetector(playerid, 20.0, COLOR_CREAM, lines);
	SetPlayerChatBubble(playerid, params[0], COLOR_GREY, 20.0, 7000);
	return true;
}

cmd:s(playerid, params[])
{
    if(GetPVarInt(playerid, "pMuted") > 0) { SendMes(playerid, COLOR_LIGHTRED, "[!] У Вас отключен чат. Дождитесь истечения: %i секунд.", GetPVarInt(playerid, "pMuted")); return false; }
 	if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /s [Текст]");
 	if(!IsPlayerInAnyVehicle(playerid)) ApplyAnimation(playerid,"ON_LOOKERS","shout_01",1000.0,0,0,0,0,0,1);
	format(lines, 128, "[...] %s крикнул: %s", GetName(playerid), params[0]);
	SetPlayerChatBubble(playerid, params[0], COLOR_WHITE, 70.0, 10000);
	return ProxDetector(playerid, 70.0, COLOR_WHITE, lines);
}

cmd:w(playerid, params[])
{
    if(GetPVarInt(playerid, "pMuted") > 0) { SendMes(playerid, COLOR_LIGHTRED, "[!] У Вас отключен чат. Дождитесь истечения: %i секунд.", GetPVarInt(playerid, "pMuted")); return false; }
 	if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /w [Текст]");
	format(lines, 128, "[...] %s шепнул: %s", GetName(playerid), params[0]);
	return ProxDetector(playerid, 5.0, COLOR_GREY, lines);
}

cmd:me(playerid, params[])
{
    if(GetPVarInt(playerid, "pMuted") > 0) { SendMes(playerid, COLOR_LIGHTRED, "[!] У Вас отключен чат. Дождитесь истечения: %i секунд.", GetPVarInt(playerid, "pMuted")); return false; }
    if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /me [Действие]");
    SetPlayerChatBubble(playerid, params[0], COLOR_PURPLE, 30.0, 5000);
	format(lines, 128, "[ME] %s %s", GetName(playerid), params[0]);
    return ProxDetector(playerid, 30.0, COLOR_PURPLE, lines);
}

cmd:do(playerid, params[])
{
    if(GetPVarInt(playerid, "pMuted") > 0) { SendMes(playerid, COLOR_LIGHTRED, "[!] У Вас отключен чат. Дождитесь истечения: %i секунд.", GetPVarInt(playerid, "pMuted")); return false; }
    if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /do [Действие]");
    SetPlayerChatBubble(playerid, params[0], COLOR_PURPLE, 30.0, 5000);
	format(lines, 64, "[DO] %s (( %s ))", params[0], GetName(playerid));
	return ProxDetector(playerid, 30.0,COLOR_PURPLE, lines);
}

cmd:try(playerid, params[])
{
    if(GetPVarInt(playerid, "pMuted") > 0) { SendMes(playerid, COLOR_LIGHTRED, "[!] У Вас отключен чат. Дождитесь истечения: %i секунд.", GetPVarInt(playerid, "pMuted")); return false; }
    if(sscanf(params, "s[100]", params[1])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /try [Действие]");
	params[0] = random(2);
	if(!params[0]) format(lines, 128, "[TRY] %s %s {FA0909}| Неудачно",GetName(playerid), params[1]);
	else format(lines, 128, "[TRY] %s %s {09FA29}| Удачно", GetName(playerid), params[1]);
	SetPlayerChatBubble(playerid, params[1], COLOR_PURPLE, 30.0, 5000);
	return ProxDetector(playerid, 30.0, COLOR_PURPLE, lines);
}

cmd:pay(playerid, params[])
{
    if(sscanf(params, "ui", params[0], params[1])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /pass [ID Игрока] [Сумма]");
    if(!IsPlayerConnected(params[0]) || !GetPVarInt(params[0],"Logged")) return true;
    if(GetMoney(playerid) < params[1]) return true;
    if(GetPVarInt(playerid, "pExp") > 5) return SendClientMessage(playerid, COLOR_WHITE, "[!] Передавать деньги можно только при проживании с 5 дней в штате.");
    if(playerid == params[0]) return true;
    GiveMoney(playerid, -params[1]);
    GiveMoney(params[0], params[1]);
	return true;
}

cmd:atm(playerid, params[])
{
	for(new i = 1; i <= TOTALATM; i++)
	{
	    if(!IsPlayerInRangeOfPoint(playerid, 3.0, ATMInfo[i][aX],ATMInfo[i][aY],ATMInfo[i][aZ])) continue;
	    params[1]++;
	    BankList(playerid);
	    break;
	}
	return true;
}

cmd:time(playerid, params[])
{
    new hour, minuite, second;
    gettime(hour, minuite, second);
	if(minuite < 10) format(lines, 100, "~w~%d:0%d~g~", hour, minuite);
	else format(lines, 100, "~w~%d:%d~g~", hour, minuite);
	GameTextForPlayer(playerid, lines, 5000, 1);
	if(!IsPlayerInAnyVehicle(playerid)) ApplyAnimation(playerid,"COP_AMBIENT","Coplook_watch",4.1,0,0,0,0,0,1);
	return true;
}

cmd:edit(playerid, params[])
{
    if(GetPVarInt(playerid, "pMuted") > 0) { SendMes(playerid, COLOR_LIGHTRED, "[!] У Вас отключен чат. Дождитесь истечения: %i секунд.", GetPVarInt(playerid, "pMuted")); return false; }
    if(GetPVarInt(playerid, "pMember") == 12) AdvertList(playerid);
	else if(GetPVarInt(playerid, "pMember") != 12) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас нет прав на использование этой команды.");
	return true;
}

cmd:action(playerid, params[])
{
    if(GetPVarInt(playerid, "pMuted") > 0) { SendMes(playerid, COLOR_LIGHTRED, "[!] У Вас отключен чат. Дождитесь истечения: %i секунд.", GetPVarInt(playerid, "pMuted")); return false; }
	return ShowPlayerDialog(playerid, D_ACTION, d_List, "{6699FF}Меню действий", "{FFFFFF}1. Крикнуть\n2. Шепнуть\n3. Выполнить действие\n4. Использовать\n5. Попытки", "Выбрать", "Выход");
}

cmd:dinfo(playerid, params[]) return Drive(playerid);

cmd:p(playerid, params[])
{
    if(GetPVarInt(playerid, "pMuted") > 0) { SendMes(playerid, COLOR_LIGHTRED, "[!] У Вас отключен чат. Дождитесь истечения: %i секунд.", GetPVarInt(playerid, "pMuted")); return false; }
	if(Mobile[playerid] != -1) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы уже разговариваете по телефону.");
	foreach(new i: Player)
	{
		if(Mobile[i] == playerid)
		{
		    if(Ether[playerid] == true) EtherCalled[i] = true;
			Mobile[playerid] = i;
			SendMes(i, COLOR_PURPLE, "[M] %s ответил на звонок", GetName(playerid));
			lines = "";
			format(lines, 65, "[M] %s ответил на звонок", GetName(playerid));
			ProxDetector(playerid, 30.0, COLOR_PURPLE, lines);
			if(!IsPlayerInAnyVehicle(playerid)) SetPlayerSpecialAction(playerid, SPECIAL_ACTION_USECELLPHONE);
			return true;
		}
	}
	return true;
}

cmd:h(playerid, params[])
{
    if(GetPVarInt(playerid, "pMuted") > 0) { SendMes(playerid, COLOR_LIGHTRED, "[!] У Вас отключен чат. Дождитесь истечения: %i секунд.", GetPVarInt(playerid, "pMuted")); return false; }
    if(Mobile[playerid] == -1) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы уже не разговариваете по телефону.");
    new caller = Mobile[playerid];
	SendClientMessage(caller, COLOR_LIGHTRED, "[!] Абонент бросил телефон.");
	SetPlayerSpecialAction(caller, SPECIAL_ACTION_STOPUSECELLPHONE);
	CellTime[caller] = -1;
	CellTime[playerid] = -1;
	Mobile[caller] = -1;
	if(EtherCalled[playerid] == true) EtherCalled[playerid] = false;
	if(EtherCalled[caller] == true) EtherCalled[caller] = false;
	SendClientMessage(playerid,  COLOR_LIGHTRED, "[!] Вы бросили трубку.");
	Mobile[playerid] = -1;
	SetPlayerSpecialAction(playerid,SPECIAL_ACTION_STOPUSECELLPHONE);
	DeletePVar(playerid, "CallTime");
	DeletePVar(caller, "CallTime");
	return true;
}

cmd:sms(playerid, params[])
{
    if(GetPVarInt(playerid, "pMuted") > 0) { SendMes(playerid, COLOR_LIGHTRED, "[!] У Вас отключен чат. Дождитесь истечения: %i секунд.", GetPVarInt(playerid, "pMuted")); return false; }
    if(GetPVarInt(playerid, "Phone") == 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас выключен телефон.");
    if(GetPVarInt(playerid, "pPhone") == 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас нет мобильного телефона.");
    if(sscanf(params, "is[60]", params[0], params[1])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /sms [Номер] [Текст]");
    if(params[0] < 1000 || params[0] > 9999999) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Неверный номер телефона.");
	new full;
	foreach(new i: Player)
	{
		if(params[0] == GetPVarInt(i, "pPhone"))
		{
		    if(Phone[i] == false) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У вызываемого Вами абонента выключен телефон.");
		    full++;
			PlayerPlaySound(i, 1052, 0.0, 0.0, 0.0);
			PlayerPlaySound(playerid, 1052, 0.0, 0.0, 0.0);

			SendMes(i, 0xFFFF00AA, "[M] [СООБЩЕНИЕ] %s[%i]: %s", GetName(playerid), GetPVarInt(playerid, "pPhone"), params[1]);
			SendMes(playerid, 0xFFFF00AA, "[M] [СООБЩЕНИЕ] %s[%i]: %s", GetName(i), GetPVarInt(playerid, "pPhone"), params[1]);
			SendClientMessage(playerid, COLOR_GREEN, "[M] Ваше СМС сообщение было успешно доставлено получателю");
			lines = "";
			format(lines, 90, "[ME] %s смотрит мобильный телефон", GetName(playerid));
			ProxDetector(playerid, 30.0, COLOR_PURPLE, lines);
   			break;
		}
	}
	if(full == 0) SendClientMessage(playerid, COLOR_GREY, "[!] Игрок с данным номером не найден!");
	return true;
}

cmd:c(playerid, params[])
{
    if(GetPVarInt(playerid, "pMuted") > 0) { SendMes(playerid, COLOR_LIGHTRED, "[!] У Вас отключен чат. Дождитесь истечения: %i секунд.", GetPVarInt(playerid, "pMuted")); return false; }
	if(sscanf(params, "i", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /c [Номер]");
    if(GetPVarInt(playerid, "Phone") == 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас выключен телефон.");
	if(Mobile[playerid] != -1) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы уже разговариваете по телефону!");
    if(GetPVarInt(playerid, "pPhone") == 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас нет мобильного телефона.");
    if(sscanf(params, "i", params[0]))
	{
	    if(!IsPlayerInAnyVehicle(playerid)) SetPlayerSpecialAction(playerid, 11);
		ShowPlayerDialog(playerid, D_MOBILE+10, d_List, "{6699FF}Вызовы", "- Вызвать скотовозку\n- Вызвать дефибриллянтов\n- Вызвать полицию", "Вызов", "Выход");
		return true;
	}
	if(params[0] == GetPVarInt(playerid, "pPhone")) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не можете перезвонить на свой номер телефона.");
	if(params[0] < 1 || params[0] > 999999) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Набранный Вами номер не обнаружен.");
	new full;
	foreach(new i: Player)
	{
		if(params[0] == GetPVarInt(i, "pPhone"))
		{
		    full++;
			if(Phone[i] == false) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У вызываемого Вами абонента выключен телефон.");
		    if(Mobile[i] != -1) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У вызываемого Вами абонента занято!");
		    if(Ether[i] == true) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Данное действие невозможно.");
			Mobile[playerid] = i;
	      	SendMes(i, -1, "[M] Вам звонит: %s (Номер: %i). Чтобы ответить, введите: /p", GetName(playerid), GetPVarInt(playerid, "pPhone"));
	      	lines = "";
			format(lines, 90, "[ME] %s звонит телефон", GetName(i));
			ProxDetector(i, 30.0, COLOR_PURPLE, lines);
            PlayerPlaySound(playerid, 1057, 0.0, 0.0, 0.0);
			SendClientMessage(playerid, COLOR_WHITE, "[M] Чтобы повесить трубку, введите: /h");
			if(!IsPlayerInAnyVehicle(playerid)) SetPlayerSpecialAction(playerid, 11);
			CellTime[playerid] = 0;
			break;
		}
	}
	if(full == 0) SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Набранный Вами номер не обнаружен.");
	return true;
}

cmd:admin(playerid, params[])
{
    if(GetPVarInt(playerid, "pAdmin") < 1 || GetPVarInt(playerid, "AdmLogged") == 1) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
    return ShowPlayerDialog(playerid, D_ADMIN, d_Input, "{6699FF}Авторизация", "{FFFFFF}Введите администраторский ключ:\n\nСистема антипенетрации заботится о Вас.\nЕсли у Вас возникнут какие-либо сомнения\n по поводу надёжности ключа,\n Вы можете его изменить в меню настроек: '/setup'", "Вход", "Выход");
}

cmd:jet(playerid, params[])
{
    //if(GetPVarInt(playerid, "pAdmin") < 3 || GetPVarInt(playerid, "AdmLogged") == 1) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
    SetPVarInt(playerid, "Jet", 1);
    SetPlayerSpecialAction(playerid, SPECIAL_ACTION_USEJETPACK);
    return true;
}

cmd:disarm(playerid, params[])
{
    if(GetPVarInt(playerid, "pAdmin") < 2 || !GetPVarInt(playerid, "AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
	if(sscanf(params, "u", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /disarm [ID Игрока]");
	ResetPlayerWeapons(params[0]);
    format(lines, 128, "[A] %s обезоружил Вас.", GetName(playerid));
	SendClientMessage(params[0], COLOR_LIGHTRED, lines);
	return true;
}

cmd:burn(playerid, params[])
{
	if(GetPVarInt(playerid, "pAdmin") < 10 || !GetPVarInt(playerid, "AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
	if(sscanf(params, "u", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /burn [ID Игрока]");
	PlayAudioStreamForPlayer(params[0], "http://127.0.0.1/burn.mp3", 0.0, 0.0, 0.0);
	format(lines, 128, "[A] %s %s поджёг Вас.", Admins_Type(playerid), GetName(playerid));
	SendClientMessage(params[0], COLOR_LIGHTRED, lines);
	return true;
}

cmd:setstats(playerid, params[])
{
	if(GetPVarInt(playerid, "pAdmin") < 10 || !GetPVarInt(playerid, "AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
	if(sscanf(params, "u", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /setstats [ID Игрока]");
	if(!IsPlayerConnected(params[0]) || !GetPVarInt(params[0],"Logged")) return true;
	SetPVarInt(playerid, "Stats", params[0]);
	return ShowPlayerDialog(playerid, D_ADMIN+1, DIALOG_STYLE_LIST, "{6699FF}Статистика", "1. Изменить имя игрока\n2. Изменить опыт игрока\n3. Изменить уровень игрока\n4. Изменить пароль игрока\n5. Изменить уровень администратора\n6. Изменить уровень лидерства", "Выбрать", "Выход");
}

cmd:fixveh(playerid, params[])
{
    if(GetPVarInt(playerid, "pAdmin") < 3 || !GetPVarInt(playerid,"AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
	if(!IsPlayerInAnyVehicle(playerid)) return true;
    RepairVehicle(GetPlayerVehicleID(playerid));
 	return SendClientMessage(playerid, COLOR_ORANGE, "[V] Машина починена.");
}

cmd:setfuel(playerid, params[])
{
	if(GetPVarInt(playerid, "pAdmin") < 1 || !GetPVarInt(playerid,"AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
	if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_LIGHTRED, PlayerIsNotInCar);
	if(sscanf(params, "i", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /setfuel [Кол-во]");
	if(params[0] > 100 || params[0] < 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Используйте от 0 до 100.");
	SetGVarFloat("Fuel", params[0], GetPlayerVehicleID(playerid));
	return SendMes(playerid, COLOR_LIGHTRED, "[V] Вы установили бензина в машине: %d",params[0]);
}

cmd:setskin(playerid, params[])
{
	if(GetPVarInt(playerid, "pAdmin") < 7 || !GetPVarInt(playerid,"AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
	if(sscanf(params, "ui", params[0],params[1])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /setskin [ID Игрока] [Skin №]");
	if(!IsPlayerConnected(params[0]) || !GetPVarInt(params[0],"Logged")) return true;
	if(params[1] > 312 || params[1] < 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Используйте от 0 до 312.");
	SetPlayerSkin(params[0], params[1]);
	return SendMes(playerid, COLOR_LIGHTRED, "[A] Вы установили временную модель игроку: %s", GetName(params[0]));
}

cmd:sethp(playerid, params[])
{
	if(GetPVarInt(playerid, "pAdmin") < 1 || !GetPVarInt(playerid,"AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
	if(sscanf(params, "ui", params[0],params[1])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /sethp [ID Игрока] [Кол-во]");
	if(!IsPlayerConnected(params[0]) || !GetPVarInt(params[0],"Logged")) return true;
	if(params[1] > 100 || params[1] < 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Используйте от 0 до 100.");
	SetHealth(params[0], params[1]);
	return SendMes(playerid, COLOR_LIGHTRED, "[A] Вы установили %d здоровья игроку: %s", params[1], GetName(params[0]));
}

cmd:llbunk(playerid, params[])
{
    SetPlayerPos(playerid, -1589.0540,-2577.4744,30.2910);
	return true;
}

cmd:tpcor(playerid, params[])
{
    if(GetPVarInt(playerid, "pAdmin") < 1 || !GetPVarInt(playerid,"AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
	new Float:pos[3];
 	if(sscanf(params,"fff", pos[0], pos[1], pos[2])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /tpcor [X] [Y] [Z]");
 	SetPlayerPos(playerid, pos[0], pos[1], pos[2]);
 	return SendClientMessage(playerid, COLOR_LIGHTRED, "[A] Вы были телепортированы.");
}

cmd:ooc(playerid, params[])
{
	if(GetPVarInt(playerid, "pAdmin") <= 3 || !GetPVarInt(playerid,"AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
    if(GetPVarInt(playerid, "pMuted") > 0) { SendMes(playerid, COLOR_LIGHTRED, "[!] У Вас отключен чат. Дождитесь истечения: %i секунд.", GetPVarInt(playerid, "pMuted")); return false; }
	if(sscanf(params, "s[140]", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /ooc [Текст]");
	format(lines, sizeof lines, "[OOC] %s %s: %s", Admins_Type(playerid), GetName(playerid), params[0]);
	return SendClientMessageToAll(COLOR_TURQUOISE, lines);
}

cmd:ad(playerid, params[])
{
    if(GetPVarInt(playerid, "pMuted") > 0) { SendMes(playerid, COLOR_LIGHTRED, "[!] У Вас отключен чат. Дождитесь истечения: %i секунд.", GetPVarInt(playerid, "pMuted")); return false; }
    if(GetPVarInt(playerid, "pPhone") == 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас нет телефона, купить можно в 24-7.");
    if(TOTALADVERT >= 30) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] В публикации недостаточно мест для Вашего объявления!");
    if(GetPVarInt(playerid,"ATime") > gettime()) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Посылать объявление можно раз в 15 секунд!");
    if(GetMoney(playerid) < strlen(params[0])*3) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас недостаточно средств!");
	if(sscanf(params, "s[60]", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /ad [Текст]");
	TOTALADVERT++;
	strmid(AI[TOTALADVERT][aText], params[0], 0, strlen(params[0]), 128);
	strmid(AI[TOTALADVERT][aName], GetName(playerid), 0, strlen(GetName(playerid)),MAX_PLAYER_NAME);
	AI[TOTALADVERT][aPhone] = GetPVarInt(playerid, "pPhone");
	SendClientMessage(playerid, COLOR_LIGHTRED, "[S] Ваше объявление было отправлено в СМИ для утверждения.");
	SetPVarInt(playerid,"ATime",gettime() + 15);
	return true;
}

cmd:refactore(playerid, params[])
{
    if(GetPVarInt(playerid, "pAdmin") < 10 || !GetPVarInt(playerid,"AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
    if(IsPlayerAdmin(playerid) == 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не авторизовались как RCON-администратор.");
	ShowPlayerDialog(playerid, D_REFACTORE, d_Box, "{6699FF}Рефакторинг ядра", "{FFFFFF}ВНИМАНИЕ! Проделанные действия могут повлиять на работу игрового режима.\nСледует вводить/изменить код с предельной осторожностью.\n\nВсе данные сохраняются и компилируются в TRNQLT SPS.", "Далее", "Выход");
	return true;
}

cmd:add(playerid, params[])
{
	if(GetPVarInt(playerid, "pAdmin") < 1 || !GetPVarInt(playerid,"AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
	return ShowPlayerDialog(playerid, D_ADD, d_List,"{6699FF}Меню добавлений","1. Добавить дом\n2. Добавить GPS\n3. Добавить вход / выход\n4. Добавить терминал\n5. Добавить бизнес\n6. Добавить объект\n7. Добавить TextDraw\n8. Добавить нейрометку", "Выбрать", "Выход");
}

cmd:veh(playerid, params[])
{
	new idveh, c1, c2;
	if(GetPVarInt(playerid, "pAdmin") < 4 || !GetPVarInt(playerid,"AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
	if(sscanf(params, "ddd", idveh, c1, c2)) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /veh [ID Транспорта] [1 Цвет] [2 Цвет]");
	if(idveh > 611 || idveh < 400) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте /veh [ID транспорта] [1 Цвет] [2 Цвет]");
	if(c1 > 100 || c1 < 0) return SendClientMessage(playerid, COLOR_RED, "[!] ID цвета транспорта от 0 до 100.");
	if(c2 > 100 || c2 < 0) return SendClientMessage(playerid, COLOR_RED, "[!] ID цвета транспорта от 0 до 100.");
	new Float:X, Float:Y, FLoat:Z;
	GetPlayerPos(playerid, Float:X, Float:Y, Float:Z);
	new carid = CreateVehicle(idveh, Float:X, Float:Y, Float:Z, 0.0, c1, c2, 60000);
	new engine, lights, alarm, doors, bonnet, boot, objective;
	GetVehicleParamsEx(carid, engine, lights, alarm, doors, bonnet, boot, objective);
	SetVehicleParamsEx(carid, 0,0, alarm, doors, bonnet, boot, objective);
	SetGVarFloat("Fuel", 100.0, carid);
	SetVehicleNumberPlate(carid, "Edit");
	return true;
}

cmd:dveh(playerid, params[])
{
    new idveh, c1, c2;
	if(GetPVarInt(playerid, "pAdmin") < 4 || !GetPVarInt(playerid,"AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
	if(sscanf(params, "ddd", idveh, c1, c2)) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /dveh [ID Транспорта]");
	// ДОРАБОТАТЬ!
	return true;
}

cmd:car1(playerid, params[])
{
	new Float:Pos[4], ivModel, ivPrice, ivColors[2];
	if(GetPVarInt(playerid, "pAdmin") < 10 || !GetPVarInt(playerid,"AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
	if(sscanf(params, "iiii", ivModel, ivPrice, ivColors[0], ivColors[1])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /car1 [ID Транспорта] [Цена] [1 Цвет] [2 Цвет]");
	GetPlayerPos(playerid, Pos[0], Pos[1], Pos[2]);
	GetPlayerFacingAngle(playerid, Pos[3]);
	++ TOTAL_VEHS;
	VehicleInfo[TOTAL_VEHS][vModel] = ivModel;
	VehicleInfo[TOTAL_VEHS][vColor1] = ivColors[0];
	VehicleInfo[TOTAL_VEHS][vColor2] = ivColors[1];
	VehicleInfo[TOTAL_VEHS][vPrice] = ivPrice;
	VehicleInfo[TOTAL_VEHS][vPosX] = Pos[0];
	VehicleInfo[TOTAL_VEHS][vPosY] = Pos[1];
	VehicleInfo[TOTAL_VEHS][vPosZ] = Pos[2];
	VehicleInfo[TOTAL_VEHS][vPosA] = Pos[3];
	strmid(VehicleInfo[TOTAL_VEHS][vOwner], "None", 0, 20, 20);
	strmid(VehicleInfo[TOTAL_VEHS][vPlate], "Edit", 0, 32, 32);
	VehicleInfo[TOTAL_VEHS][vLocked] = 1;
	format(query, sizeof(query), "INSERT INTO `"TABLE_CARS"` (`vID`, `vModel`, `vColor1`, `vColor2`, `vPrice`, `vOwner`, `vPosX`, `vPosY`, `vPosZ`, `vPosA`, `vPlate`) VALUES (%d, %d, %d, %d, %d, 'None', %f, %f, %f, %f, 'Edit')",
	TOTAL_VEHS, ivModel, ivColors[0], ivColors[1], ivPrice, Pos[0], Pos[1], Pos[2], Pos[3]);
	mysql_function_query(Mysql, query, false, "", "");
	new cCar = CreateVehicle(ivModel, Pos[0], Pos[1], Pos[2], Pos[3], ivColors[0], ivColors[1], 500000);
	SetGVarFloat("Fuel", 100.0, cCar);
	SetVehicleNumberPlate(cCar, "Edit");
	OwnedVeh(cCar) = TOTAL_VEHS;
	SaveVehicles(TOTAL_VEHS);
	format(Car, 128, "[A] Транспорт %i (ID: %i) был создан. Цена: %i$", ivModel, TOTAL_VEHS, ivPrice);
	SendClientMessage(playerid, COLOR_LIGHTRED, Car);
	return true;
}

cmd:ppc(playerid, params[])
{
	if(GetPVarInt(playerid,"Logged") == 0) return true;
	if(GetPVarInt(playerid, "pAdmin") < 10 || !GetPVarInt(playerid,"AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
   	if(GetPVarInt(playerid,"PPC") == 1)
   	{
   	    TOTALENTERS++;
   	    new Float:Cord[4];
   	    GetPlayerPos(playerid, Cord[0], Cord[1], Cord[2]);
   	    GetPlayerFacingAngle(playerid, Cord[3]);
     	sscanf(coordc,"p<,>fffdddds[32]",
		EntersInfo[TOTALENTERS][pX], EntersInfo[TOTALENTERS][pY],EntersInfo[TOTALENTERS][pZ], EntersInfo[TOTALENTERS][pM]
		,EntersInfo[TOTALENTERS][pT],EntersInfo[TOTALENTERS][pI], EntersInfo[TOTALENTERS][pV], EntersInfo[TOTALENTERS][Name]);
		format(query, sizeof(query), "INSERT INTO "TABLE_ENTERS" (id, x, y, z, m, t, i, v, tx, ty, tz, tfa, ti, tv, name) VALUES (%d, '%f', '%f', '%f', %d, %d, %d, %d, '%f', '%f', '%f', '%f', %d, %d, '%s')",
		TOTALENTERS,EntersInfo[TOTALENTERS][pX], EntersInfo[TOTALENTERS][pY],EntersInfo[TOTALENTERS][pZ],EntersInfo[TOTALENTERS][pT], EntersInfo[TOTALENTERS][pM]
		,EntersInfo[TOTALENTERS][pI], EntersInfo[TOTALENTERS][pV],Cord[0],Cord[1],Cord[2],Cord[3],GetPlayerInterior(playerid),GetPlayerVirtualWorld(playerid),
		EntersInfo[TOTALENTERS][Name]);
		mysql_function_query(Mysql, query, false, "", "");
   	    SetPVarInt(playerid,"PPC", 0);
   	    SendMes(playerid, COLOR_LIGHTRED, "[A] Вход номер %d создан",TOTALENTERS);
   	}
   	return true;
}

cmd:givemoney(playerid, params[])
{
   	if(GetPVarInt(playerid, "pAdmin") < 9 || !GetPVarInt(playerid,"AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
    if(sscanf(params,"ui",params[0], params[1])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /givemoney [ID Игрока] [Money]");
    if(!IsPlayerConnected(params[0]) || !GetPVarInt(params[0],"Logged")) return true;
    return GiveMoney(params[0], params[1]);
}

cmd:payday(playerid, params[])
{
    if(GetPVarInt(playerid, "pAdmin") < 9 || !GetPVarInt(playerid,"AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
    return PayDay();
}

cmd:setint(playerid, params[])
{
	if(GetPVarInt(playerid, "pAdmin") < 2 || !GetPVarInt(playerid,"AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
	if(sscanf(params, "ui", params[0], params[1])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /setint [ID Игрока] [Интерьер]");
	if(!IsPlayerConnected(params[0]) || !GetPVarInt(params[0],"Logged")) return true;
	return SetPlayerInterior(params[0], params[1]);
}

cmd:settime(playerid, params[])
{
	if(GetPVarInt(playerid, "pAdmin") < 8 || !GetPVarInt(playerid,"AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
	if(sscanf(params, "i", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /settime [Время]");
	if(params[0] < 0 || params[0] > 23) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Время от 0 до 23!");
	SetWorldTime(params[0]);
	return SendMes(playerid, COLOR_GREY, "[A] Время установленно: %i", params[0]);
}

cmd:mute(playerid, params[])
{
    if(GetPVarInt(playerid, "pAdmin") < 1 || !GetPVarInt(playerid,"AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
	if(sscanf(params, "uis[64]", params[0], params[1], params[2])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /mute [ID Игрока] [Интервал Минут] [Причина]");
	if(GetPVarInt(playerid, "pMuted") > 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Игроку и так выдали заглушку игрового чата.");
	SetPVarInt(params[0], "pMuted", params[1]*60);
	SetPlayerInt(GetName(playerid), "Mute", GetPVarInt(playerid, "pMuted"));
	lines = "";
	format(lines, 128, "[A] %s установил заглушку %s на %i минут. Причина: %s", GetName(playerid), GetName(params[0]), params[1], params[2]);
	SendClientMessageToAll(COLOR_LIGHTRED, lines);
	SendMes(params[0], COLOR_LIGHTRED,"[!] Вы получили заглушку игрового чата на %i минут.", params[1]);
	return true;
}

cmd:unmute(playerid, params[])
{
    if(GetPVarInt(playerid, "pAdmin") < 1 || !GetPVarInt(playerid,"AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
	if(sscanf(params, "u", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /unmute [ID Игрока]");
	if(GetPVarInt(playerid, "pMuted") == 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Игрок не получал заглушку игрового чата.");
	SetPVarInt(params[0], "pMuted", 0);
	SetPlayerInt(GetName(playerid), "Mute", GetPVarInt(playerid, "pMuted"));
	lines = "";
	format(lines, 128, "[A] %s отключил заглушку у %s",GetName(playerid), GetName(params[0]), params[1], params[2]);
	SendClientMessageToAll(COLOR_LIGHTRED, lines);
	SendMes(params[0], COLOR_LIGHTRED,"[!] %s отключил у Вас заглушку игрового чата.", GetName(playerid));
	return true;
}

cmd:kick(playerid, params[])
{
	if(GetPVarInt(playerid, "pAdmin") < 1 || !GetPVarInt(playerid,"AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
	if(sscanf(params, "us", params[0],params[1])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /kick [ID Игрока] [Причина]");
	if(!IsPlayerConnected(params[0]) || !GetPVarInt(params[0],"Logged")) return true;
	format(lines, 512, "[A] %s кикнул %s. Причина: %s", GetName(playerid), GetName(params[0]), params[1]);
	SendClientMessageToAll(COLOR_CREAM, lines);
	return Kick(params[0]);
}

cmd:rr(playerid, params[])
{
	if(GetPVarInt(playerid, "pAdmin") < 1 || !GetPVarInt(playerid,"AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
    if(GetPVarInt(playerid, "pMuted") > 0) { SendMes(playerid, COLOR_LIGHTRED, "[!] У Вас отключен чат. Дождитесь истечения: %i секунд(ы).", GetPVarInt(playerid, "pMuted")); return false; }
	if(sscanf(params, "us[128]", params[0],params[1])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /rr [ID Игрока] [Текст]");
	if(!IsPlayerConnected(params[0]) || !GetPVarInt(params[0],"Logged")) return true;
	SendMes(params[0], COLOR_CREAM, "[A] %s: %s", GetName(playerid), params[1]);
	SendMes(playerid, COLOR_LIGHTRED, "[A] Вы ответили %s: %s", GetName(params[0]), params[1]);
	return SendAdmin(COLOR_LIGHTRED, "[A] %s ответил на репорт %s",GetName(playerid), GetName(params[0]));
}

cmd:a(playerid, params[])
{
	if(GetPVarInt(playerid,  "pAdmin") < 1 || !GetPVarInt(playerid,"AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
    if(GetPVarInt(playerid, "pMuted") > 0) { SendMes(playerid, COLOR_LIGHTRED, "[!] У Вас отключен чат. Дождитесь истечения: %i секунд.", GetPVarInt(playerid, "pMuted")); return false; }
    if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /a [Текст]");
    return SendAdmin(COLOR_ORANGE, "[ — ] %s(%i): %s", GetName(playerid), GetPVarInt(playerid, "pAdmin"), params[0]);
}

cmd:lsetup(playerid, params[])
{
    if(GetPVarInt(playerid, "pLeader") == 0 && GetPlayerFaction(playerid) == 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не являетесь лидером организации.");
    new lsetup_string[192];
    for(new idx = 1; idx <= TOTALFACTIONS; idx++)
    {
        SetPVarInt(playerid, "PlayerFact", idx);
    	idx = GetPVarInt(playerid, "PlayerFact");
	    format(lsetup_string, sizeof(lsetup_string), "{6699FF}Меню организации (%s)", FactInfo[idx][fName]);
	    ShowPlayerDialog(playerid, D_LEADER, d_List, lsetup_string, "1. Изменить название\n2. Изменить скины организации\n3. Изменить заработную плату\n4. Изменить ранги\n5. Управление полномочиями для рангов\n6. Фракционный транспорт", "Выбрать", "Выход");
    }
	return true;
}

cmd:bsetup(playerid, params[])
{
	if(GetPlayerBizz(playerid) == 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не владеете бизнесом.");
	return ShowPlayerDialog(playerid, D_BUSINESS+7, d_List, "{6699FF}Меню предприятия", "1. Информация о бизнесе\n2. Открыть бизнес\n3. Установить цену за товар\n4. Установить цену за вход\n5. Заказать продукты\n6. Продать бизнес", "Выбрать", "Выход");
}

cmd:tele(playerid, params[])
{
    if(GetPVarInt(playerid, "pAdmin") < 1 || !GetPVarInt(playerid,"AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
	ShowPlayerDialog(playerid, D_WORK+4, d_List, "{6699FF}Список телепортов", "1. Бомжатник\n2. Лесопилка\n3. Грузчики\n4. Шахта\n5. SFPD\n6. LVPD\n7. Grove\n8. Ballas\n9. Vagos\n10. Aztecas\n11. Rifa\n12. ВМФ\n13. Сцена", "Далее", "Отмена");
	return true;
}

cmd:spawn(playerid, params[])
{
    if(GetPVarInt(playerid, "pAdmin") < 2 || !GetPVarInt(playerid,"AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
    if(sscanf(params, "u", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /spawn [ID Игрока]");
    SpawnPlayer(params[0]);
	return true;
}

cmd:tp(playerid, params[])
{
   	if(GetPVarInt(playerid, "pAdmin") < 1 || !GetPVarInt(playerid,"AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
	if(sscanf(params, "u", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /tp [ID Игрока]");
	if(!IsPlayerConnected(params[0]) || !GetPVarInt(params[0],"Logged")) return true;
	new Float:Ploc[3];
	GetPlayerPos(params[0], Ploc[0], Ploc[1], Ploc[2]);
	if(GetPlayerState(playerid) == 2) SetVehiclePos(GetPlayerVehicleID(playerid), Ploc[0], Ploc[1]+4, Ploc[2]);
	else
	{
		SetPlayerPos(playerid, Ploc[0], Ploc[1]+2, Ploc[2]);
		SetPlayerInterior(playerid, GetPlayerInterior(params[0]));
		SetPlayerVirtualWorld(playerid, GetPlayerVirtualWorld(params[0]));
	}
	return SendClientMessage(playerid, COLOR_LIGHTRED, "[A] Вы успешно телепортированы.");
}

cmd:gethere(playerid, params[])
{
	if(GetPVarInt(playerid, "pAdmin") < 1 || !GetPVarInt(playerid,"AdmLogged")) return SendClientMessage(playerid, COLOR_GREY, "[!] Данная команда не зарегистрирована на сервере. Введите '/setup' для просмотра команд.");
	if(sscanf(params, "u", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /gethere [ID]");
	if(!IsPlayerConnected(params[0]) || !GetPVarInt(params[0],"Logged")) return true;
	new Float:Ploc[3];
	GetPlayerPos(playerid, Ploc[0], Ploc[1], Ploc[2]);
	if(GetPlayerState(params[0]) == 2) SetVehiclePos(GetPlayerVehicleID(params[0]), Ploc[0], Ploc[1]+4, Ploc[2]);
	else
	{
		SetPlayerPos(params[0], Ploc[0], Ploc[1]+2, Ploc[2]);
		SetPlayerInterior(params[0], GetPlayerInterior(playerid));
		SetPlayerVirtualWorld(params[0], GetPlayerVirtualWorld(playerid));
	}
	SendMes(params[0], COLOR_CREAM, "[A] Вы были телепортированы %s: %s", Admins_Type(playerid), cDataInfo[playerid][Name]);
	return SendMes(playerid, COLOR_GREY, "[A] Вы телепортировали игрока: %s",cDataInfo[params[0]][Name]);
}

cmd:buybizz(playerid, params[])
{
    if(GetPlayerBizz(playerid)) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы уже владеете бизнесом.");
    if(params[1] == 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы должны находится рядом с бизнесом.");
	if(params[2] == 0) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Бизнес уже имеет владельца.");
	for(new idx = 1; idx <= TOTALBIZZ; idx++)
    {
  		if(IsPlayerInRangeOfPoint(playerid, 5.0, BizzInfo[idx][bEntrx], BizzInfo[idx][bEntry], BizzInfo[idx][bEntrz]))
  		{
	    	params[1]++;
			if(!strcmp(BizzInfo[idx][bOwner], "None", true))
			{
	  			params[2]++;
				if(GetPVarInt(playerid, "Bank") < BizzInfo[idx][bPrice]) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] У Вас недостаточно средств.");
				else
				{
				    SetPVarInt(playerid, "Bank", GetPVarInt(playerid, "Bank") - BizzInfo[idx][bPrice]);
				    SetPlayerInt(GetName(playerid), "Bank", GetPVarInt(playerid, "Bank"));
					SendClientMessage(playerid, COLOR_BLUE, "[B] Поздравляем! Вы приобрели бизнес.");
					strmid(BizzInfo[idx][bOwner], GetName(playerid), 0, strlen(GetName(playerid)), MAX_PLAYER_NAME);
					format(query, sizeof(query), "UPDATE "TABLE_BIZZ" SET owner = '%s' WHERE id = '%d' LIMIT 1", BizzInfo[idx][bOwner], idx);
					mysql_function_query(Mysql, query, false, "", "");
					UpdateBizz(idx);
					break;
				}
			}
		}
		else params[2]++;
	}
	return true;
}

cmd:binfo(playerid, params[])
{
    for(new i = 1; i <= TOTALBIZZ; i++)
	{
	    if(!IsPlayerInRangeOfPoint(playerid, 20.0, BizzInfo[i][bEntrx],BizzInfo[i][bEntry],BizzInfo[i][bEntrz])) continue;
   		if(!strcmp(BizzInfo[i][bOwner],"None",true)) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Бизнес не имеет владельца!");
		BizzStats(playerid, i);
		params[1]++;
		break;
	}
	if(params[1] == 0) SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы должны находиться рядом с бизнесом/");
	return true;
}

cmd:en(playerid, params[])
{
	if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER) return true;
	if(!GetGVarFloat("Fuel", GetPlayerVehicleID(playerid))) return SendClientMessage(playerid, COLOR_LIGHTRED, CarHasNoFuel);
	if(!GetGVarInt("Engine", GetPlayerVehicleID(playerid)))
	{
		GetVehicleParamsEx(GetPlayerVehicleID(playerid), Vehicle[0], Vehicle[1], Vehicle[2], Vehicle[3],Vehicle[4], Vehicle[5], Vehicle[6]);
		SetVehicleParamsEx(GetPlayerVehicleID(playerid), VEHICLE_PARAMS_ON, Vehicle[1],Vehicle[2], Vehicle[3], Vehicle[4], Vehicle[5], Vehicle[6]);
		SetGVarInt("Engine", 1, GetPlayerVehicleID(playerid));
	}
	else
	{
		GetVehicleParamsEx(GetPlayerVehicleID(playerid), Vehicle[0], Vehicle[1], Vehicle[2], Vehicle[3], Vehicle[4], Vehicle[5], Vehicle[6]);
		SetVehicleParamsEx(GetPlayerVehicleID(playerid), VEHICLE_PARAMS_OFF, Vehicle[1], Vehicle[2], Vehicle[3], Vehicle[4], Vehicle[5], Vehicle[6]);
	    DeleteGVar("Engine", GetPlayerVehicleID(playerid));
	}
    return true;
}

cmd:car(playerid, params[])
{
	if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не находитесь в транспортном средстве.");
	new strin[256], s[64];
	if(strmatch(VehicleInfo[OwnedVeh(GetPlayerVehicleID(playerid))][vOwner], GetName(playerid)))
	{
	    if(VehicleInfo[OwnedVeh(GetPlayerVehicleID(playerid))][vLocked] == 1) format(s, sizeof(s), "1. Открыть транспорт");
	    else format(s, sizeof(s), "1. Закрыть транспорт");
	    format(strin, sizeof(Car), "%s\n2. Продать транспорт\n3. Парковка\n4. Изменить номер", s, VehicleInfo[OwnedVeh(GetPlayerVehicleID(playerid))][vPlate]);
	    return ShowPlayerDialog(playerid, D_AUTO+1, d_List, "{6699FF}Меню транспорта", strin, "Выбрать", "Выход");
 	}
	else return SendClientMessage(playerid, COLOR_WHITE, "[!] Данный вид транспорта не принадлежит Вам.");
}

cmd:li(playerid, params[])
{
	if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER) return true;
	if(!GetGVarInt("Lights", GetPlayerVehicleID(playerid)))
	{
		GetVehicleParamsEx(GetPlayerVehicleID(playerid), Vehicle[0], Vehicle[1], Vehicle[2], Vehicle[3], Vehicle[4], Vehicle[5], Vehicle[6]);
	    SetVehicleParamsEx(GetPlayerVehicleID(playerid), Vehicle[0], VEHICLE_PARAMS_ON, Vehicle[2], Vehicle[3], Vehicle[4], Vehicle[5], Vehicle[6]);
     	SetGVarInt("Lights", 1, GetPlayerVehicleID(playerid));
	}
	else
    {
   		GetVehicleParamsEx(GetPlayerVehicleID(playerid), Vehicle[0], Vehicle[1], Vehicle[2], Vehicle[3], Vehicle[4], Vehicle[5], Vehicle[6]);
	    SetVehicleParamsEx(GetPlayerVehicleID(playerid), Vehicle[0], VEHICLE_PARAMS_OFF, Vehicle[2], Vehicle[3], Vehicle[4], Vehicle[5], Vehicle[6]);
	 	DeleteGVar("Lights", GetPlayerVehicleID(playerid));
	}
    return true;
}

cmd:bonnet(playerid, params[])
{
	if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER) return true;
	if(!GetGVarInt("Bonnet", GetPlayerVehicleID(playerid)))
	{
    	GetVehicleParamsEx(GetPlayerVehicleID(playerid), Vehicle[0], Vehicle[1], Vehicle[2], Vehicle[3], Vehicle[4], Vehicle[5], Vehicle[6]);
	    SetVehicleParamsEx(GetPlayerVehicleID(playerid), Vehicle[0], Vehicle[1], Vehicle[2], Vehicle[3], VEHICLE_PARAMS_ON, Vehicle[5], Vehicle[6]);
   		SetGVarInt("Bonnet", 1, GetPlayerVehicleID(playerid));
   		SetGVarInt("Bonet", 1, GetPlayerVehicleID(playerid));
    }
   	else
	{
   		GetVehicleParamsEx(GetPlayerVehicleID(playerid), Vehicle[0], Vehicle[1], Vehicle[2], Vehicle[3], Vehicle[4], Vehicle[5], Vehicle[6]);
	    SetVehicleParamsEx(GetPlayerVehicleID(playerid), Vehicle[0], Vehicle[1], Vehicle[2], Vehicle[3], VEHICLE_PARAMS_OFF, Vehicle[5], Vehicle[6]);
 		DeleteGVar("Bonnet", GetPlayerVehicleID(playerid));
 		DeleteGVar("Bonet", GetPlayerVehicleID(playerid));
	}
    return true;
}

cmd:boot(playerid, params[])
{
	if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER) return true;
	if(!GetGVarInt("Boot", GetPlayerVehicleID(playerid)))
	{
    	GetVehicleParamsEx(GetPlayerVehicleID(playerid), Vehicle[0], Vehicle[1], Vehicle[2], Vehicle[3], Vehicle[4], Vehicle[5], Vehicle[6]);
	    SetVehicleParamsEx(GetPlayerVehicleID(playerid), Vehicle[0], Vehicle[1], Vehicle[2], Vehicle[3], Vehicle[4], VEHICLE_PARAMS_ON, Vehicle[6]);
	    SetGVarInt("Bonet", 1, GetPlayerVehicleID(playerid));
   		SetGVarInt("Boot", 1, GetPlayerVehicleID(playerid));
    }
   	else
	{
   		GetVehicleParamsEx(GetPlayerVehicleID(playerid), Vehicle[0], Vehicle[1], Vehicle[2], Vehicle[3], Vehicle[4], Vehicle[5], Vehicle[6]);
	    SetVehicleParamsEx(GetPlayerVehicleID(playerid), Vehicle[0], Vehicle[1], Vehicle[2], Vehicle[3], Vehicle[4], VEHICLE_PARAMS_OFF, Vehicle[6]);
	    DeleteGVar("Bonet", GetPlayerVehicleID(playerid));
 		DeleteGVar("Boot", GetPlayerVehicleID(playerid));
	}
    return true;
}

cmd:eject(playerid, params[])
{
    if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_LIGHTRED, PlayerIsNotInCar);
    if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы должны находится за рулём транспорта.");
	if(sscanf(params, "u", params[0])) return SendClientMessage(playerid, COLOR_GREY, "[C.M.D] Используйте: /eject [ID]");
	if(!IsPlayerConnected(params[0]) || !GetPVarInt(params[0],"Logged")) return true;
	if(playerid == params[0]) return true;
	if(!IsPlayerInVehicle(params[0],  GetPlayerVehicleID(playerid))) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Игрок должен находится в Вашем транспорте.");
	SendMes(playerid, COLOR_CREAM, "[V] Вы выкинули из транспорта %s", GetName(params[0]));
	SendMes(params[0], COLOR_CREAM, "[V] %s выкинул(а) Вас из транспорта", GetName(playerid));
    return RemovePlayerFromVehicle(params[0]);
}

cmd:home(playerid, params[])
{
	if(!GetPlayerHouse(playerid)) return SendClientMessage(playerid, COLOR_LIGHTRED, "[!] Вы не владеете домом.");
	params[0] = GetPVarInt(playerid, "PlayerHouse");
 	if(!strcmp(GetName(playerid), HouseInfo[params[0]][hOwner],true))
 	{
 	    format(lines, 128, "1. Открыть или Закрыть дом\n2. Баланс дома\n3. Улучшения\n4. Продать дом");
		return ShowPlayerDialog(playerid, D_HOUSE+2, d_List, "{6699FF}Меню недвижимости", lines, "Выбрать", "Выход");
	}
	return SendClientMessage(playerid, COLOR_LIGHTRED, PlayerIsNotInHome);
}

cmd:returnmoney(playerid, params[])
{
	ShowPlayerDialog(playerid, D_MONEYBACK, d_List, "{6699FF}Возврат денег", "1. Вернуть деньги за жилище\n2. Вернуть деньги за предприятие\n3. Вернуть деньги за АЗС\n4. Вернуть деньги за транспорт", "Выбрать", "Выход");
	return true;
}

cmd:setspawn(playerid, params[])
{
	return ShowPlayerDialog(playerid, D_STATS+7, d_List, "{6699FF}Изменение места появления в игре", "1. ЖД Вокзал или автостанция\n2. Дом\n3. Квартира\n4. Гостиничный номер\n5. База организации", "Выбрать", "Выход");
}

cmd:exit(playerid, params[])
{
	for(new i = 1; i <= TOTALHOUSE; ++i)
	{
		if(!IsPlayerInRangeOfPoint(playerid, 3.0, HouseInfo[i][hExit][0], HouseInfo[i][hExit][1], HouseInfo[i][hExit][2])) continue;
  		if(HouseInfo[i][hInt][1] != GetPlayerVirtualWorld(playerid) || HouseInfo[i][hInt][0] != GetPlayerInterior(playerid)) continue;
		SetPlayerPos(playerid,HouseInfo[i][hEntr][0],HouseInfo[i][hEntr][1],HouseInfo[i][hEntr][2]);
		SetPlayerInterior(playerid, 0);
		SetPlayerVirtualWorld(playerid, 0);
		params[1]++;
		break;
	}
	if(!params[1]) return SendClientMessage(playerid, COLOR_LIGHTRED, PlayerIsNotInHome);
	return true;
}
