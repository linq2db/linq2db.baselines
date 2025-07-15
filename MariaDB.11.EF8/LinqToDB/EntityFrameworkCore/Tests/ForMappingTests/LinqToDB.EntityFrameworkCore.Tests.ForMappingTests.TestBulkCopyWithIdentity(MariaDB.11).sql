-- MariaDB.10.MySqlConnector MySql

CREATE TEMPORARY TABLE `WithIdentity`
(
	`Id`   int      AUTO_INCREMENT NOT NULL,
	`Name` longtext                NOT NULL,

	CONSTRAINT `PK_WithIdentity` PRIMARY KEY CLUSTERED (`Id`)
)



-- MariaDB.10.MySqlConnector MySql

INSERT INTO `WithIdentity`
(
	`Name`
)
VALUES
('John Doe'),
('Jane Doe')



-- MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`WithIdentity` `t1`



-- MariaDB.10.MySqlConnector MySql

DROP TEMPORARY TABLE IF EXISTS `WithIdentity`



