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
('b336c2d4-2d08-410a-8f5c-1fc470ca4fc3','John Doe'),
('349129e6-0f2b-424b-a4fc-28d62e4b522c','Jane Doe')



--  MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`NoIdentity` `t1`



--  MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `NoIdentity`



