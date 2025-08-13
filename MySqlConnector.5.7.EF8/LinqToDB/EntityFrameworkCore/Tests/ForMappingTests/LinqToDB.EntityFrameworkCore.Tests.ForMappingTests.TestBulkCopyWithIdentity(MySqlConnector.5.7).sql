-- MySql.5.7.MySqlConnector MySql57

CREATE TEMPORARY TABLE `WithIdentity`
(
	`Id`   int      AUTO_INCREMENT NOT NULL,
	`Name` longtext                NOT NULL,

	CONSTRAINT `PK_WithIdentity` PRIMARY KEY CLUSTERED (`Id`)
)



-- MySql.5.7.MySqlConnector MySql57

INSERT INTO `WithIdentity`
(
	`Name`
)
VALUES
('John Doe'),
('Jane Doe')



-- MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`WithIdentity` `t1`



-- MySql.5.7.MySqlConnector MySql57

DROP TEMPORARY TABLE IF EXISTS `WithIdentity`



