-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

CREATE TEMPORARY TABLE `T_c54c9f87c7c0`
(
	`item` VARCHAR(4000)     NULL
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `T_c54c9f87c7c0`
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
	EXISTS(
		SELECT
			*
		FROM
			`T_c54c9f87c7c0` `t1`
		WHERE
			`r`.`Tag` = `t1`.`item` OR `r`.`Tag` IS NULL AND `t1`.`item` IS NULL
	) OR
	`r`.`Tag` IS NULL
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TEMPORARY TABLE IF EXISTS `T_c54c9f87c7c0`

