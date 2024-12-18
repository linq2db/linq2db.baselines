BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3791Table`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue3791Table`
(
	`Id`      INT           AUTO_INCREMENT NOT NULL,
	`OtherId` VARCHAR(4000)                    NULL,

	CONSTRAINT `PK_Issue3791Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3791GuidTable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue3791GuidTable`
(
	`Id` CHAR(36) NOT NULL,

	CONSTRAINT `PK_Issue3791GuidTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`OtherId`,
	`a_Association`.`Id`
FROM
	`Issue3791Table` `t1`
		LEFT JOIN `Issue3791GuidTable` `a_Association` ON `t1`.`OtherId` = CAST(`a_Association`.`Id` AS CHAR(36)) AND `t1`.`OtherId` IS NOT NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3791GuidTable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3791Table`

