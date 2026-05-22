-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TEMPORARY TABLE `T_3825609fbd9b`
(
	`item` VARCHAR(4000)     NULL
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `T_3825609fbd9b`
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
			`T_3825609fbd9b` `t1`
		WHERE
			`r`.`Tag` = `t1`.`item` OR `r`.`Tag` IS NULL AND `t1`.`item` IS NULL
	) OR
	`r`.`Tag` IS NULL
ORDER BY
	`r`.`Id`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TEMPORARY TABLE IF EXISTS `T_3825609fbd9b`

