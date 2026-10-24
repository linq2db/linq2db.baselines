-- MariaDB.10.MySqlConnector MariaDB
CREATE TEMPORARY TABLE `Identities`
(
	`Id`   int         AUTO_INCREMENT NOT NULL,
	`Name` varchar(50)                NOT NULL,

	CONSTRAINT `PK_Identities` PRIMARY KEY CLUSTERED (`Id`)
)



-- MariaDB.10.MySqlConnector MariaDB
INSERT INTO `Identities`
(
	`Name`
)
VALUES
('Bar'),
('Baz')



-- MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`Identities` `t1`
ORDER BY
	`t1`.`Id`



-- MariaDB.10.MySqlConnector MariaDB
DROP TEMPORARY TABLE IF EXISTS `Identities`



