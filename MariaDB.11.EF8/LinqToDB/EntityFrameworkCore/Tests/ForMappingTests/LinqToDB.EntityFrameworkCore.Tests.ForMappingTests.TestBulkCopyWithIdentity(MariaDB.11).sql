-- SQLite.MS MariaDB.10.MySqlConnector MySql

CREATE TEMPORARY TABLE `WithIdentity`
(
	`Id`   int      AUTO_INCREMENT NOT NULL,
	`Name` longtext                NOT NULL,

	CONSTRAINT `PK_WithIdentity` PRIMARY KEY CLUSTERED (`Id`)
)



-- SQLite.MS MariaDB.10.MySqlConnector MySql

INSERT INTO `WithIdentity`
(
	`Name`
)
VALUES
('John Doe'),
('Jane Doe')



-- SQLite.MS MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`WithIdentity` `t1`



-- SQLite.MS MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `WithIdentity`



