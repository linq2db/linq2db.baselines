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
('5dfed805-ef47-4e07-a28e-a68e124dcd46','John Doe'),
('a9b9b864-d847-45c1-ae6b-cebaa918f4d3','Jane Doe')



--  MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`NoIdentity` `t1`



--  MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `NoIdentity`



