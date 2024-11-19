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
('9e9285b3-0150-4672-8f75-2a01e4e87523','John Doe'),
('e642b345-bfd0-442f-8142-a43c67e92d07','Jane Doe')



--  MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`NoIdentity` `t1`



--  MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `NoIdentity`



