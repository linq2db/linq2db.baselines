--  MySql.8.0.MySqlConnector MySql80

CREATE TEMPORARY TABLE `NoIdentity`
(
	`Id`   char(36) NOT NULL,
	`Name` longtext NOT NULL,

	CONSTRAINT `PK_NoIdentity` PRIMARY KEY CLUSTERED (`Id`)
)



--  MySql.8.0.MySqlConnector MySql80

INSERT INTO `NoIdentity`
(
	`Id`,
	`Name`
)
VALUES
('5c11a9de-9163-4624-af20-d3a1533f3acd','John Doe'),
('e074e758-ea84-4cd9-bf35-8f5b1edaaa14','Jane Doe')



--  MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`NoIdentity` `t1`



--  MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `NoIdentity`



