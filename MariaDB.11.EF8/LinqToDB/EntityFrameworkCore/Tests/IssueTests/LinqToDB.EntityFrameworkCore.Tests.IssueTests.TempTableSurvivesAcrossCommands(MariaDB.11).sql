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
	COUNT(*)
FROM
	`Identities` `t1`



-- MariaDB.10.MySqlConnector MariaDB
SELECT
	`e`.`Name`
FROM
	`Identities` `e`
ORDER BY
	`e`.`Id`



-- MariaDB.10.MySqlConnector MariaDB
DROP TEMPORARY TABLE IF EXISTS `Identities`



