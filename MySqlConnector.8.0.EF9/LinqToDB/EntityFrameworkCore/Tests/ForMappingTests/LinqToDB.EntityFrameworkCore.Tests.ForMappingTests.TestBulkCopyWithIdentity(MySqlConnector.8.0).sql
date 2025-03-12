-- SQLite.MS MySql.8.0.MySqlConnector MySql80

CREATE TEMPORARY TABLE `WithIdentity`
(
	`Id`   int      AUTO_INCREMENT NOT NULL,
	`Name` longtext                NOT NULL,

	CONSTRAINT `PK_WithIdentity` PRIMARY KEY CLUSTERED (`Id`)
)



-- SQLite.MS MySql.8.0.MySqlConnector MySql80

INSERT INTO `WithIdentity`
(
	`Name`
)
VALUES
('John Doe'),
('Jane Doe')



-- SQLite.MS MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`WithIdentity` `t1`



-- SQLite.MS MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `WithIdentity`



