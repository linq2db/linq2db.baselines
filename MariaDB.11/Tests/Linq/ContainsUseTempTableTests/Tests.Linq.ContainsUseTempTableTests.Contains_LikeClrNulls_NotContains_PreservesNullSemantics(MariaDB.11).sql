-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

CREATE TEMPORARY TABLE `T_2ce6830c0484`
(
	`item` VARCHAR(4000)     NULL
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `T_2ce6830c0484`
(
	`item`
)
VALUES
('tag1'),
('tag2'),
('tag4'),
('tag5'),
('tag7'),
('tag8')

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`r`.`Id`,
	`r`.`Name`,
	`r`.`Tag`
FROM
	`ContainsTempTableTestRow` `r`
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			`T_2ce6830c0484` `t1`
		WHERE
			`r`.`Tag` = `t1`.`item` OR `r`.`Tag` IS NULL AND `t1`.`item` IS NULL
	) AND
	`r`.`Tag` IS NOT NULL
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TEMPORARY TABLE IF EXISTS `T_2ce6830c0484`

