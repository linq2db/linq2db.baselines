--  MySql.5.7.MySqlConnector MySql57

CREATE TEMPORARY TABLE `NoIdentity`
(
	`Id`   char(36) NOT NULL,
	`Name` longtext NOT NULL,

	CONSTRAINT `PK_NoIdentity` PRIMARY KEY CLUSTERED (`Id`)
)



--  MySql.5.7.MySqlConnector MySql57

INSERT INTO `NoIdentity`
(
	`Id`,
	`Name`
)
VALUES
('0d228518-3a5e-469c-b416-6b38696963df','John Doe'),
('4a929a94-fd0d-49d6-91ec-6f663b06c5ba','Jane Doe')



--  MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`NoIdentity` `t1`



--  MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `NoIdentity`



