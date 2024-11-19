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
('36f33ee3-f7b6-405d-b64a-aa082947dd42','John Doe'),
('22e37ca2-acec-4d02-8dff-7bf1fedd4996','Jane Doe')



--  MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`NoIdentity` `t1`



--  MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `NoIdentity`



