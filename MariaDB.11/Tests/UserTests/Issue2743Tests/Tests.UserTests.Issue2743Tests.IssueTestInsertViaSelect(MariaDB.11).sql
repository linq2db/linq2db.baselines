BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `MessageEventDTO`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `MessageEventDTO`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_MessageEventDTO` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `MessageEventDTOTb2`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `MessageEventDTOTb2`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_MessageEventDTOTb2` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `MessageEventDTOTb2`
(
	`Id`
)
SELECT
	`x`.`Id`
FROM
	`MessageEventDTO` `x`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `MessageEventDTOTb2`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `MessageEventDTO`

