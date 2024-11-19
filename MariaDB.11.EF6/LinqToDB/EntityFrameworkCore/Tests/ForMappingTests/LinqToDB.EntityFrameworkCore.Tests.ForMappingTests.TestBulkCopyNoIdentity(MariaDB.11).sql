--  MariaDB.10.MySqlConnector MySql

CREATE TEMPORARY TABLE `NoIdentity`
(
	`Id`   char(36) NOT NULL,
	`Name` longtext NOT NULL,

	CONSTRAINT `PK_NoIdentity` PRIMARY KEY CLUSTERED (`Id`)
)



--  MariaDB.10.MySqlConnector MySql

INSERT INTO `NoIdentity`
(
	`Id`,
	`Name`
)
VALUES
('48ddb02e-9ac9-4049-8a06-ebf664c97489','John Doe'),
('cebc1673-df0b-45a3-add3-f5eb77045e7e','Jane Doe')



--  MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`NoIdentity` `t1`



--  MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `NoIdentity`



