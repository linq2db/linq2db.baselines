-- MySql.8.0.MySqlConnector MySql80

CREATE TEMPORARY TABLE `NoIdentity`
(
	`Id`   char(36) NOT NULL,
	`Name` longtext NOT NULL,

	CONSTRAINT `PK_NoIdentity` PRIMARY KEY CLUSTERED (`Id`)
)



INSERT ASYNC BULK `NoIdentity`(Id, Name)



-- MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`NoIdentity` `t1`



-- MySql.8.0.MySqlConnector MySql80

DROP TEMPORARY TABLE IF EXISTS `NoIdentity`



