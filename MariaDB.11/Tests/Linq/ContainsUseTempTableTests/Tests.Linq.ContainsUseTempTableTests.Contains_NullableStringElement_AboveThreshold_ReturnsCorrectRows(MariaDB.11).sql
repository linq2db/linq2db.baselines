-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

CREATE TEMPORARY TABLE `T_35a1f74a70cc`
(
	`item` VARCHAR(4000)     NULL
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `T_35a1f74a70cc`
(
	`item`
)
VALUES
('tag1'),
('tag2'),
('tag4'),
('tag5'),
('tag7'),
('tag8'),
('tag10'),
('tag11'),
('tag13'),
('tag14'),
('tag16'),
('tag17'),
('tag19'),
('tag20'),
('tag22'),
('tag23'),
('tag25'),
('tag26'),
('tag28'),
('tag29')

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
			`T_35a1f74a70cc` `t1`
		WHERE
			`r`.`Tag` = `t1`.`item` OR `r`.`Tag` IS NULL AND `t1`.`item` IS NULL
	)
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TEMPORARY TABLE IF EXISTS `T_35a1f74a70cc`

