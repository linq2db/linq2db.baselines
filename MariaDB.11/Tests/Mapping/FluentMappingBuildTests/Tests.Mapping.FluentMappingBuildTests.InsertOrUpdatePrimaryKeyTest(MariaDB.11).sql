﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `FluentTemp`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `FluentTemp`
(
	`ID`   INT         NOT NULL,
	`Name` VARCHAR(20)     NULL,

	CONSTRAINT `PK_FluentTemp` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'

INSERT INTO `FluentTemp`
(
	`ID`,
	`Name`
)
VALUES
(
	@ID,
	@Name
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `FluentTemp`
(
	`ID`,
	`Name`
)
VALUES
(
	1,
	'John II'
)
ON DUPLICATE KEY UPDATE
	`ID` = `ID`,
	`Name` = `Name`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `FluentTemp`

