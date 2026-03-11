-- MySql.5.7.MySqlConnector MySql57

CREATE TEMPORARY TABLE `WithIdentity`
(
	`Id`   int      AUTO_INCREMENT NOT NULL,
	`Name` longtext                NOT NULL,

	CONSTRAINT `PK_WithIdentity` PRIMARY KEY CLUSTERED (`Id`)
)



-- MySql.5.7.MySqlConnector MySql57

CREATE TEMPORARY TABLE `NoIdentity`
(
	`Id`   char(36) NOT NULL,
	`Name` longtext NOT NULL,

	CONSTRAINT `PK_NoIdentity` PRIMARY KEY CLUSTERED (`Id`)
)



-- MySql.5.7.MySqlConnector MySql57

DROP TEMPORARY TABLE IF EXISTS `NoIdentity`



-- MySql.5.7.MySqlConnector MySql57

DROP TEMPORARY TABLE IF EXISTS `WithIdentity`



