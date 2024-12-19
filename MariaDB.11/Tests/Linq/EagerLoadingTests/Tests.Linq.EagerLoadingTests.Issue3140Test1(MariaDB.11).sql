BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3140Parent`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue3140Parent`
(
	`Id`      INT NOT NULL,
	`ChildId` INT NOT NULL,

	CONSTRAINT `PK_Issue3140Parent` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3140Child`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue3140Child`
(
	`Id`   INT           NOT NULL,
	`Name` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_Issue3140Child` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`Id`,
	`a_Child`.`Id`,
	`a_Child`.`Name`
FROM
	`Issue3140Parent` `p`
		LEFT JOIN `Issue3140Child` `a_Child` ON `p`.`ChildId` = `a_Child`.`Id`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3140Child`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3140Parent`

