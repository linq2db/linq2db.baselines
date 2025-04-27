-- MariaDB.10.MySqlConnector MySql

CREATE TEMPORARY TABLE `NoIdentity`
(
	`Id`   char(36) NOT NULL,
	`Name` longtext NOT NULL,

	CONSTRAINT `PK_NoIdentity` PRIMARY KEY CLUSTERED (`Id`)
)



-- MariaDB.10.MySqlConnector MySql

INSERT INTO `NoIdentity`
(
	`Id`,
	`Name`
)
VALUES
('bc7b663d-0fde-4327-8f92-5d8cc3a11d11','John Doe'),
('a948600d-de21-4f74-8ac2-9516b287076e','Jane Doe')



-- MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`NoIdentity` `t1`



-- MariaDB.10.MySqlConnector MySql

DROP TEMPORARY TABLE IF EXISTS `NoIdentity`



