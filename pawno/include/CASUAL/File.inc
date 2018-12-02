#define LIFE_MAX_FILE     15
#define LIFE_KEY_FILE     1000

static stock 
    bool:LifeSlot[LIFE_MAX_FILE],
	LifeKeys[LIFE_MAX_FILE],
	LifeStr[140],
	LifePos;

stock OpenFile(File[])
{
	new File:Life = fopen(File, io_read);
	if(!Life) return false;
	fread(Life, LifeStr);
	for(new i, k; i < LIFE_MAX_FILE, k < LIFE_KEY_FILE; ++i, ++k)
	{
		if(LifeSlot[i]) continue;
		LifeSlot[i] = true;
	    if(LifeKeys[k]) continue;
		LifeKeys[k]++;
		LifePos = strfind(LifeStr, "=");
		fclose(Life);
		return i;
	}
	fclose(Life);
	return false;
}

stock CloseFile(File)
{
	fclose(File);
}

stock CreateFile(File[])
{ 
	if(fexist(File)) return;
    new File:Life = fopen(File);
    fclose(Life);
}  

stock DeleteFile(File[])
{
	if(fexist(File)) fremove(File);
}

stock GetInteger(File, const Key[], &Value)
{
	if(!LifeSlot[File]) return false;
}
	
stock GetIntegerFile(pini:File,const key[],&dest)
{
    if !FILEOPENNED[int:File] *then return pini:ERROR_GET_FAYL;
    positionf=-1;
	for new i=-1;i++<(FILEKEYKOLVO[File]-1) && positionf==-1; do
	    if FILEKEY[File][i][0]==key[0] *then
	        positionf=strcmp(key,FILEKEY[File][i],true)==0 ? i:-1;
	if positionf==-1 *then return ERROR_GET_FAYL;
	dest=strval(FILEKEYVALUE[File][positionf]);
	return true;
}

stock ini_getInteger ( nFilePointer, szKeyName[], & nReturnValue )
{
    if // если ИД открытого файла указан неверно
    (
            nFilePointer < 0
        ||  nFilePointer >= INI_MAX_OPENED_FILES
        ||  _ini_nSlotUsed[nFilePointer] != 1
    )
        return INI_WRONG_SLOT; // вернуть код: неверный указатель на открытый файл
    new nKeyLen = strlen(szKeyName); // узнаем длину имени указанного ключа
    if ( nKeyLen <= 0 ) // если указан пустой ключ
        return INI_KEY_NOT_FOUND;
    for // перебор и сравнение всех ключей файла с указанным ключом
    (
        new kPos = 0, curFilePos, found = 0;
        kPos < _ini_nKeysCount[nFilePointer];
        kPos++
    )
    {
        found = 0; // флаг, найдена ли позиция конца ключа = 0
        for // ищем позицию конца ключа
        (
            curFilePos = _ini_nDelimPos[nFilePointer][kPos] - 1; // текущ. поз. файла = поз. текущ. INI_DELIMITER - 1
            curFilePos >= 0; // продолжать пока поз. файла >= 0
            curFilePos-- // после каждого повтора текущ. поз. файла -= 1
        )
        {
            switch ( _ini_szFileContent[nFilePointer]{curFilePos} ) // узнаем что за символ в текущ. поз. файла
            {
                case INI_SPACE_CHAR :           continue; // если это пробельный символ, перейдем к пред. символу файла
                case INI_STRING_DELIMITER :     break; // если это конец строки
                default : // если это другой символ
                {
                    found = 1; // позиция конца ключа найдена
                    break; // конец цикла
                }
            }
        }
        // если позиция конца ключа не найдена, переход к след. позиции INI_DELIMITER
        if ( found != 1 ) continue;
        // сравниваем посимвольно текущий ключ файла и указанный ключ
        for ( new curKeyPos = nKeyLen - 1;  curKeyPos >= 0;  curFilePos--, curKeyPos-- )
        {
            if
            (
                    curFilePos < 0 // если поз файла стала < 0
                ||  _ini_szFileContent[nFilePointer]{curFilePos} != szKeyName[curKeyPos] // если символы из ключей не равны
                ||  _ini_szFileContent[nFilePointer]{curFilePos} == INI_STRING_DELIMITER // если символ из ключа это INI_STRING_DELIMITER
            )
            {
                found = 0; // флаг, ключ не найден
                break; // конец сравнения
            }
        }
        if ( found != 0 ) // если указанный ключ найден в файле
        {
            // если найдено совпадение не целого ключа файла, а его окончания с указанным ключом
            if ( curFilePos >= 0 )
            {
                switch ( _ini_szFileContent[nFilePointer]{curFilePos} )
                {
                    case INI_KEY_STARTS : {}
                    default: continue;
                }
            }

            // текущая позиция в файле будет на 1 больше текущей позиции INI_DELIMITER
            curFilePos = _ini_nDelimPos[nFilePointer][kPos] + 1;

            // ищем позицию начала значения, она будет помещена в curFilePos
            for ( ; ; curFilePos++ )
            {
                if ( curFilePos >= _ini_nFileSize[nFilePointer] ) break;

                switch ( _ini_szFileContent[nFilePointer]{curFilePos} )
                {
                    case INI_SPACE_CHAR :   continue; // если это пробельный символ, перейдем к след. символу
                    default :               break; // если это другой символ
                }
            }
            new strValue[INI_INTEGER_SIZE]; // временная строка для численного значения
            // скопируем посимвольно в strValue значение ключа из файла
            // воспользуемся созданной переменной found как позицией в возвращаемом значении
            for ( found = 0;  found < INI_INTEGER_SIZE;  found++, curFilePos++ )
            {
                switch ( _ini_szFileContent[nFilePointer]{curFilePos} )
                {
                    case INI_NUMBER_ENDS : // если это символ конца численного значения
                    {
                        strValue[found] = 0; // запишем символ конца строки
                        break; // конец копирования
                    }
                    default :
                        // копируем символ из файла в strValue
                        strValue[found] = _ini_szFileContent[nFilePointer]{curFilePos};
                }
            }
            strValue[INI_INTEGER_SIZE - 1] = 0; // на всякий случай обрежем правильно строку
            nReturnValue = strval(strValue); // запишем в nReturnValue численное значение ключа
            return INI_OK;
        }
    }
    return INI_KEY_NOT_FOUND;
}