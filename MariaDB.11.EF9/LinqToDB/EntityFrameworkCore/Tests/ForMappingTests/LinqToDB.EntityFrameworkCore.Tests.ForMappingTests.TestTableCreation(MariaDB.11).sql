﻿-- MariaDB.10.MySqlConnector MySql

CREATE TEMPORARY TABLE `WithIdentity`
(
	`Id`   int      AUTO_INCREMENT NOT NULL,
	`Name` longtext                NOT NULL,

	CONSTRAINT `PK_WithIdentity` PRIMARY KEY CLUSTERED (`Id`)
)



-- MariaDB.10.MySqlConnector MySql

CREATE TEMPORARY TABLE `NoIdentity`
(
	`Id`   char(36) NOT NULL,
	`Name` longtext NOT NULL,

	CONSTRAINT `PK_NoIdentity` PRIMARY KEY CLUSTERED (`Id`)
)



-- MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `NoIdentity`



-- MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `WithIdentity`



