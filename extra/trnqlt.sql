-- phpMyAdmin SQL Dump
-- version 2.10.5
-- http://www.phpmyadmin.net
-- 
-- Хост: localhost
-- Время создания: Ноя 01 2014 г., 18:20
-- Версия сервера: 5.0.51
-- Версия PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- База данных: `power`
-- 

-- --------------------------------------------------------

-- 
-- Структура таблицы `accounts`
-- 

CREATE TABLE `accounts` (
  `ID` int(11) NOT NULL auto_increment,
  `Name` varchar(32) character set utf8 NOT NULL,
  `Password` varchar(32) character set utf8 NOT NULL,
  `IP` varchar(16) character set utf8 NOT NULL,
  `Admin` int(11) NOT NULL default '0',
  `aPassword` varchar(32) character set utf8 NOT NULL default 'v0Ad3169Zp',
  `Mail` varchar(64) character set utf8 NOT NULL default 'None',
  `Level` int(11) NOT NULL default '1',
  `Cash` int(11) NOT NULL default '300',
  `Bank` int(11) NOT NULL default '0',
  `Exp` int(11) NOT NULL default '0',
  `DataReg` varchar(16) character set utf8 NOT NULL,
  `Leader` int(3) NOT NULL default '0',
  `Member` int(3) NOT NULL default '0',
  `Rank` int(3) NOT NULL default '0',
  `Warn` int(11) NOT NULL default '0',
  `Sex` int(11) NOT NULL default '0',
  `Model` int(11) NOT NULL default '0',
  `Char` int(11) NOT NULL default '0',
  `Lic` varchar(16) character set utf8 NOT NULL default '0, 0, 0, 0, 0',
  `Guns` varchar(40) character set utf8 NOT NULL default '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0',
  `Ammos` varchar(80) character set utf8 NOT NULL default '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0',
  `Skills` varchar(40) character set utf8 NOT NULL default '0, 0, 0, 0, 0, 0',
  `Mute` int(11) NOT NULL default '0',
  `Jail` int(11) NOT NULL default '0',
  `Wanted` int(11) NOT NULL default '0',
  `Heal` float NOT NULL default '100',
  `Drugs` int(11) NOT NULL default '0',
  `Mats` int(11) NOT NULL default '0',
  `Spawns` int(11) NOT NULL,
  `ts1` int(16) NOT NULL default '1',
  `ts2` int(16) NOT NULL default '1',
  `ts3` int(16) NOT NULL default '1',
  `ts4` int(16) NOT NULL default '1',
  `ts5` int(16) NOT NULL default '1',
  `Job` int(11) NOT NULL default '0',
  `Married` int(11) NOT NULL default '0',
  `Age` int(4) NOT NULL default '0',
  `Nation` varchar(32) NOT NULL default 'None',
  `akey` int(16) NOT NULL default '1',
  `Mobile` int(32) NOT NULL,
  `Extra` int(16) NOT NULL,
  `JobAmount` int(55) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=50 ;

-- 
-- Дамп данных таблицы `accounts`
-- 

INSERT INTO `accounts` VALUES (49, 'John_Blackwood', '7392750s', '127.0.0.1', 0, 'v0Ad3169Zp', 'ffavicon@mail.ru', 1, 300, 0, 0, '01.11.2014', 0, 0, 0, 0, 1, 101, 0, '0, 0, 0, 0, 0', '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', '0, 0, 0, 0, 0, 0', 0, 0, 0, 100, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 25, 'Итальянец', 1, 0, 0, 0);

-- --------------------------------------------------------

-- 
-- Структура таблицы `atm`
-- 

CREATE TABLE `atm` (
  `ID` int(11) NOT NULL auto_increment,
  `X` float NOT NULL default '0',
  `Y` float NOT NULL default '0',
  `Z` float NOT NULL default '0',
  `FA` float NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Дамп данных таблицы `atm`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `bank`
-- 

CREATE TABLE `bank` (
  `id` int(16) NOT NULL,
  `fix` int(16) NOT NULL,
  `playerid` int(16) NOT NULL,
  `name` varchar(32) NOT NULL,
  `pin` int(32) NOT NULL,
  `money` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `bank`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `bank_log`
-- 

CREATE TABLE `bank_log` (
  `id` int(16) NOT NULL,
  `myid` int(16) NOT NULL,
  `outid` int(16) NOT NULL,
  `money` int(16) NOT NULL,
  `data` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `bank_log`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `cars`
-- 

CREATE TABLE `cars` (
  `vID` int(11) NOT NULL,
  `vModel` int(4) NOT NULL,
  `vColor1` int(3) NOT NULL,
  `vColor2` int(11) NOT NULL,
  `vPrice` int(11) NOT NULL,
  `vOwner` varchar(24) NOT NULL,
  `vPosX` float NOT NULL,
  `vPosY` float NOT NULL,
  `vPosZ` float NOT NULL,
  `vPosA` float NOT NULL,
  `vPlate` varchar(32) NOT NULL,
  `Locked` int(2) NOT NULL,
  UNIQUE KEY `vID` (`vID`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- 
-- Дамп данных таблицы `cars`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `enters`
-- 

CREATE TABLE `enters` (
  `ID` int(4) NOT NULL auto_increment,
  `X` float NOT NULL default '-25.781',
  `Y` float NOT NULL default '-141.254',
  `Z` float NOT NULL default '1003.55',
  `M` int(4) NOT NULL default '1318',
  `T` int(2) NOT NULL default '1',
  `I` int(4) NOT NULL default '0',
  `V` int(4) NOT NULL default '0',
  `TX` float NOT NULL default '-25.4301',
  `TY` float NOT NULL default '-139.215',
  `TZ` float NOT NULL default '1003.55',
  `TFA` float NOT NULL default '90',
  `TI` int(4) NOT NULL default '0',
  `TV` int(4) NOT NULL default '0',
  `Name` varchar(32) NOT NULL default 'None',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- 
-- Дамп данных таблицы `enters`
-- 

INSERT INTO `enters` VALUES (1, 1481.03, -1772.31, 18.7958, 19134, 2, 0, 0, 388.023, 173.906, 1008.38, 88.1744, 3, 0, 'МЭРИЯ ЛОС-САНТОС');
INSERT INTO `enters` VALUES (2, 390.77, 173.814, 1008.38, 19134, 2, 3, 0, 1481.09, -1769.37, 18.7958, 357.205, 0, 0, 'ВЫХОД');
INSERT INTO `enters` VALUES (3, 1555.51, -1675.69, 16.1953, 19134, 2, 0, 0, 246.647, 63.8058, 1003.64, 4.07025, 6, 0, 'ПОЛИЦЕЙСКИЙ ДЕПАРТАМЕНТ ЛС');
INSERT INTO `enters` VALUES (4, 246.752, 62.3338, 1003.64, 19134, 2, 6, 0, 1553.23, -1675.59, 16.1953, 90.2409, 0, 0, 'ВЫХОД');
INSERT INTO `enters` VALUES (5, 242.249, 66.3583, 1003.64, 19134, 2, 6, 0, 1568.15, -1692.14, 5.89063, 178.211, 0, 0, 'ГАРАЖ');
INSERT INTO `enters` VALUES (6, 1568.64, -1689.97, 6.21875, 19134, 2, 0, 0, 244.004, 66.4577, 1003.64, 270.646, 6, 0, 'ПОЛИЦЕЙСКИЙ ДЕПАРТАМЕНТ ЛС');
INSERT INTO `enters` VALUES (7, 2287.06, 2432.37, 10.8203, 19134, 2, 0, 0, 289.008, 169.409, 1007.17, 359.795, 3, 0, 'ПОЛИЦЕЙСКИЙ ДЕПАРТАМЕНТ ЛВ');
INSERT INTO `enters` VALUES (8, 288.825, 166.922, 1007.17, 19134, 2, 3, 0, 2286.74, 2429.91, 10.8203, 180.122, 0, 0, 'ВЫХОД');
INSERT INTO `enters` VALUES (10, 691.579, -1275.96, 13.5607, 19134, 2, 0, 0, 962.384, -53.0496, 1001.12, 88.6699, 3, 0, 'ЧЁРНАЯ СОТНЯ');
INSERT INTO `enters` VALUES (11, 966.905, -53.1355, 1001.12, 19134, 2, 3, 0, 688.541, -1275.97, 13.5585, 85.6626, 0, 0, 'ВЫХОд');
INSERT INTO `enters` VALUES (12, 1122.71, -2037, 69.8942, 19134, 2, 0, 0, 2324.44, -1146.79, 1050.71, 355.228, 12, 0, 'КЛЕМЕНТЕ');
INSERT INTO `enters` VALUES (13, 2324.45, -1149.55, 1050.71, 19134, 2, 12, 0, 1125.9, -2037.3, 69.8835, 270.01, 0, 0, 'ВЫХОД');
INSERT INTO `enters` VALUES (14, 246.364, 107.299, 1003.22, 19134, 2, 10, 0, 914.058, -1002.07, 38.0307, 15.6265, 0, 0, 'ВЫХОД');

-- --------------------------------------------------------

-- 
-- Структура таблицы `factions`
-- 

CREATE TABLE `factions` (
  `fID` int(11) NOT NULL,
  `fOwner` varchar(24) character set latin1 collate latin1_general_cs NOT NULL,
  `fName` varchar(32) NOT NULL,
  `fX` float NOT NULL,
  `fY` float NOT NULL,
  `fZ` float NOT NULL,
  `fInt` int(4) NOT NULL,
  UNIQUE KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `factions`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `gps`
-- 

CREATE TABLE `gps` (
  `ID` int(11) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- 
-- Дамп данных таблицы `gps`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `house`
-- 

CREATE TABLE `house` (
  `ID` int(11) NOT NULL auto_increment,
  `EntrX` float NOT NULL default '0',
  `EntrY` float NOT NULL default '0',
  `EntrZ` float NOT NULL default '0',
  `ExitX` float NOT NULL default '0',
  `ExitY` float NOT NULL default '0',
  `ExitZ` float NOT NULL default '0',
  `CarX` float NOT NULL default '0',
  `CarY` float NOT NULL default '0',
  `CarZ` float NOT NULL default '0',
  `CarFA` float NOT NULL default '0',
  `Owner` varchar(32) character set utf8 NOT NULL default 'None',
  `Discript` varchar(16) character set utf8 NOT NULL default 'Дом',
  `Price` int(11) NOT NULL default '0',
  `Inter` int(11) NOT NULL default '0',
  `Virtual` int(11) NOT NULL default '0',
  `Lock` int(11) NOT NULL default '0',
  `Oplata` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=3 ;

-- 
-- Дамп данных таблицы `house`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `organizations`
-- 

CREATE TABLE `organizations` (
  `id` int(16) NOT NULL,
  `owner` varchar(32) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `type` int(16) NOT NULL,
  `price` int(16) NOT NULL,
  `money` int(16) NOT NULL,
  `lic` int(16) NOT NULL,
  `xt` float NOT NULL,
  `yt` float NOT NULL,
  `zt` float NOT NULL,
  `menux` float NOT NULL,
  `menuy` float NOT NULL,
  `menuz` float NOT NULL,
  `vint` int(16) NOT NULL,
  `virt` int(16) NOT NULL,
  `icon` int(16) NOT NULL,
  `name` varchar(32) NOT NULL,
  `penter` int(16) NOT NULL,
  `lock` int(16) NOT NULL,
  `product` int(16) NOT NULL,
  `till` int(16) NOT NULL,
  `locktime` int(16) NOT NULL,
  `block` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `organizations`
-- 

INSERT INTO `organizations` VALUES (1, 'None', 1567.93, -1898.01, 13.5609, 4, 15000000, 0, 0, -794.996, 489.281, 1376.2, -787.979, 500.074, 1371.74, 1, 1, 50, 'AMBASSADOR', 0, 0, 0, 0, 0, 0);
INSERT INTO `organizations` VALUES (2, 'None', 1569.55, -1334.93, 16.4844, 2, 7000000, 0, 0, 1455.85, -977.308, -79.2749, 1463.3, -982.708, -79.2749, 0, 2, 52, 'Банк Лос-Сантос', 0, 0, 0, 0, 0, 0);
INSERT INTO `organizations` VALUES (3, 'None', 776.389, -1036.19, 24.2747, 4, 500000, 0, 0, 343.718, 305.071, 999.148, 348.634, 302.614, 999.148, 6, 3, 25, 'Ритуальные услуги', 0, 0, 0, 0, 0, 0);
INSERT INTO `organizations` VALUES (4, 'None', 1833.78, -1842.65, 13.5781, 6, 1500000, 0, 0, -25.9596, -188.259, 1003.55, -10.4987, -178.257, 1003.55, 17, 5, 17, 'Круглосуточный магазин', 0, 0, 0, 0, 0, 0);
INSERT INTO `organizations` VALUES (5, 'None', 1315.58, -897.682, 39.5781, 6, 3200500, 0, 0, -25.9596, -188.259, 1003.55, -10.4987, -178.257, 1003.55, 17, 6, 17, 'Продуктовый магазин', 0, 0, 9750, 0, 0, 0);
INSERT INTO `organizations` VALUES (6, 'None', 850.674, -1587.22, 13.5469, 4, 2800000, 0, 0, -2240.78, 137.214, 1035.41, -2237.19, 130.179, 1035.41, 6, 7, 11, 'Магазин игрушек', 0, 0, 0, 0, 0, 0);
INSERT INTO `organizations` VALUES (7, 'None', 1419.17, -1623.78, 13.5469, 4, 3000000, 0, 0, 1494.45, 1303.58, 1093.29, 1501.67, 1306.48, 1093.29, 3, 8, 35, 'Агенство недвижимости', 0, 0, -150, 0, 0, 0);
