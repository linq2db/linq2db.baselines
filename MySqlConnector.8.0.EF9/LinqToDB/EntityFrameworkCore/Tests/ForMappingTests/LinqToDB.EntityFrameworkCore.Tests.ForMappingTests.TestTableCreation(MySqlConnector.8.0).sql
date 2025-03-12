-- SQLite.MS MySql.8.0.MySqlConnector MySql80

CREATE TEMPORARY TABLE `WithIdentity`
(
	`Id`   int      AUTO_INCREMENT NOT NULL,
	`Name` longtext                NOT NULL,

	CONSTRAINT `PK_WithIdentity` PRIMARY KEY CLUSTERED (`Id`)
)



-- SQLite.MS MySql.8.0.MySqlConnector MySql80

CREATE TEMPORARY TABLE `NoIdentity`
(
	`Id`   char(36) NOT NULL,
	`Name` longtext NOT NULL,

	CONSTRAINT `PK_NoIdentity` PRIMARY KEY CLUSTERED (`Id`)
)



-- SQLite.MS MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `NoIdentity`



-- SQLite.MS MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `WithIdentity`



