-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TEMPORARY TABLE `T_52914734c260`
(
	`item` VARCHAR(4000)     NULL
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `T_52914734c260`
(
	`item`
)
VALUES
('row1'),
('row2'),
('row3'),
('row4'),
('row5'),
('row6'),
('row7'),
('row8'),
('row9'),
('row10')

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
			`T_52914734c260` `t1`
		WHERE
			`r`.`Name` = `t1`.`item` OR `r`.`Name` IS NULL AND `t1`.`item` IS NULL
	)
ORDER BY
	`r`.`Id`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TEMPORARY TABLE IF EXISTS `T_52914734c260`

