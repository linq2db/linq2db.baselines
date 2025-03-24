﻿BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `TestTrun`

BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE `TestTrun`
(
	`ID`     INT             NOT NULL,
	`Field1` DECIMAL(29, 10) NOT NULL,

	CONSTRAINT `PK_TestTrun` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

TRUNCATE TABLE `TestTrun`

BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE `TestTrun`

