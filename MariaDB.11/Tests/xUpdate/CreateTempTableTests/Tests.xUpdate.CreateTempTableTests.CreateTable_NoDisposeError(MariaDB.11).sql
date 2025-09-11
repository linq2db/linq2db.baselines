BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TEMPORARY TABLE `TempTable`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_TempTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TEMPORARY TABLE `TempTable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TEMPORARY TABLE IF EXISTS `TempTable`

