-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
CREATE TEMPORARY TABLE `TempIdentityRowTMP`
(
	`Id`    INT AUTO_INCREMENT NOT NULL,
	`Value` INT                NOT NULL,

	CONSTRAINT `PK_TempIdentityRowTMP` PRIMARY KEY CLUSTERED (`Id`)
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
INSERT INTO `TempIdentityRow`
(
	`Value`
)
VALUES
(
	1
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
INSERT INTO `TempIdentityRowTMP`
(
	`Value`
)
VALUES
(
	2
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TempIdentityRow` `t1`
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TempIdentityRowTMP` `t1`
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DROP TEMPORARY TABLE IF EXISTS `TempIdentityRowTMP`

