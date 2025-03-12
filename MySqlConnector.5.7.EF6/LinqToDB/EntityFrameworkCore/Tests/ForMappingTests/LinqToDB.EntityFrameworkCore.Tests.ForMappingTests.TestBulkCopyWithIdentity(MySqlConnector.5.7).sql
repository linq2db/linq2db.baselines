-- SQLite.MS MySql.5.7.MySqlConnector MySql57

CREATE TEMPORARY TABLE `WithIdentity`
(
	`Id`   int      AUTO_INCREMENT NOT NULL,
	`Name` longtext                NOT NULL,

	CONSTRAINT `PK_WithIdentity` PRIMARY KEY CLUSTERED (`Id`)
)



-- SQLite.MS MySql.5.7.MySqlConnector MySql57

INSERT INTO `WithIdentity`
(
	`Name`
)
VALUES
('John Doe'),
('Jane Doe')



-- SQLite.MS MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`WithIdentity` `t1`



-- SQLite.MS MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `WithIdentity`



