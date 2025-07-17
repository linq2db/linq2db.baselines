-- MySql.5.7.MySqlConnector MySql57

CREATE TEMPORARY TABLE `NoIdentity`
(
	`Id`   char(36) NOT NULL,
	`Name` longtext NOT NULL,

	CONSTRAINT `PK_NoIdentity` PRIMARY KEY CLUSTERED (`Id`)
)



-- MySql.5.7.MySqlConnector MySql57

INSERT INTO `NoIdentity`
(
	`Id`,
	`Name`
)
VALUES
('bc7b663d-0fde-4327-8f92-5d8cc3a11d11','John Doe'),
('a948600d-de21-4f74-8ac2-9516b287076e','Jane Doe')



-- MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`NoIdentity` `t1`



-- MySql.5.7.MySqlConnector MySql57

DROP TEMPORARY TABLE IF EXISTS `NoIdentity`



