-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TEMPORARY TABLE `T_8c6d1e7828bb`
(
	`item` VARCHAR(4000)     NULL
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `T_8c6d1e7828bb`
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
			`T_8c6d1e7828bb` `t1`
		WHERE
			`r`.`Name` = `t1`.`item` OR `r`.`Name` IS NULL AND `t1`.`item` IS NULL
	)
ORDER BY
	`r`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TEMPORARY TABLE IF EXISTS `T_8c6d1e7828bb`

