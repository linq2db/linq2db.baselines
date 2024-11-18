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
('74c09391-6e31-4b3b-9363-5de4e07c9e4a','John Doe'),
('50c02c9b-6313-4d7c-a961-37c98c8258b3','Jane Doe')



--  MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`NoIdentity` `t1`



--  MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `NoIdentity`



