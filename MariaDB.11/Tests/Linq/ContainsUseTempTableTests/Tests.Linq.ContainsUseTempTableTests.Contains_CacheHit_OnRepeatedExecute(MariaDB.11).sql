-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

CREATE TEMPORARY TABLE `T_0938c1ad8a85`
(
	`item` INT NOT NULL
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `T_0938c1ad8a85`
(
	`item`
)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`r`.`Id`,
	`r`.`Name`,
	`r`.`Tag`
FROM
	`ContainsTempTableTestRow` `r`
WHERE
	`r`.`Id` IN (
		SELECT
			`t1`.`item`
		FROM
			`T_0938c1ad8a85` `t1`
	)
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TEMPORARY TABLE IF EXISTS `T_0938c1ad8a85`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

CREATE TEMPORARY TABLE `T_0938c1ad8a85`
(
	`item` INT NOT NULL
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `T_0938c1ad8a85`
(
	`item`
)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`r`.`Id`,
	`r`.`Name`,
	`r`.`Tag`
FROM
	`ContainsTempTableTestRow` `r`
WHERE
	`r`.`Id` IN (
		SELECT
			`t1`.`item`
		FROM
			`T_0938c1ad8a85` `t1`
	)
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TEMPORARY TABLE IF EXISTS `T_0938c1ad8a85`

