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
('639d407d-21ef-4c18-9d3c-de6e4a34c71a','John Doe'),
('7b8c997d-a25d-47fb-a04a-eae339931676','Jane Doe')



--  MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`NoIdentity` `t1`



--  MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `NoIdentity`



