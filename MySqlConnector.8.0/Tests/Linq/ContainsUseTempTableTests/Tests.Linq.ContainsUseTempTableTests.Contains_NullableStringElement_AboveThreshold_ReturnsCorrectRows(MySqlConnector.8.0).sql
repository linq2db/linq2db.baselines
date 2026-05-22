-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TEMPORARY TABLE `T_20056bfab8d8`
(
	`item` VARCHAR(4000)     NULL
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `T_20056bfab8d8`
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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
			`T_20056bfab8d8` `t1`
		WHERE
			`r`.`Tag` = `t1`.`item` OR `r`.`Tag` IS NULL AND `t1`.`item` IS NULL
	)
ORDER BY
	`r`.`Id`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TEMPORARY TABLE IF EXISTS `T_20056bfab8d8`

