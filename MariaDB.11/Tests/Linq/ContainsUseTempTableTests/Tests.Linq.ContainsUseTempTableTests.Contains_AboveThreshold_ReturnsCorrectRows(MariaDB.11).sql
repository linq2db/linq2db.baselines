-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

CREATE TEMPORARY TABLE `T_4731c1cba494`
(
	`item` INT NOT NULL
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `T_4731c1cba494`
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
(10),
(100),
(101),
(102),
(103),
(104),
(105),
(106),
(107),
(108),
(109)

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
			`T_4731c1cba494` `t1`
	)
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TEMPORARY TABLE IF EXISTS `T_4731c1cba494`

