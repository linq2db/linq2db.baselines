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
('704bf544-c758-4d3c-b536-097b8f287746','John Doe'),
('083f9882-21e0-4c94-bbb6-cf43bac43a35','Jane Doe')



--  MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`NoIdentity` `t1`



--  MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `NoIdentity`



