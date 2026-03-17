-- MySql.5.7.MySqlConnector MySql57

CREATE TEMPORARY TABLE `NoIdentity`
(
	`Id`   char(36) NOT NULL,
	`Name` longtext NOT NULL,

	CONSTRAINT `PK_NoIdentity` PRIMARY KEY CLUSTERED (`Id`)
)



INSERT ASYNC BULK `NoIdentity`(Id, Name)



-- MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`NoIdentity` `t1`



-- MySql.5.7.MySqlConnector MySql57

DROP TEMPORARY TABLE IF EXISTS `NoIdentity`



