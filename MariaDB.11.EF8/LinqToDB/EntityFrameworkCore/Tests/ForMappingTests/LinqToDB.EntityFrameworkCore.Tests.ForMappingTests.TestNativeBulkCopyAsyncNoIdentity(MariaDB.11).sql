-- MariaDB.10.MySqlConnector MySql

CREATE TEMPORARY TABLE `NoIdentity`
(
	`Id`   char(36) NOT NULL,
	`Name` longtext NOT NULL,

	CONSTRAINT `PK_NoIdentity` PRIMARY KEY CLUSTERED (`Id`)
)



INSERT ASYNC BULK `NoIdentity`(Id, Name



-- MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`NoIdentity` `t1`



-- MariaDB.10.MySqlConnector MySql

DROP TEMPORARY TABLE IF EXISTS `NoIdentity`



