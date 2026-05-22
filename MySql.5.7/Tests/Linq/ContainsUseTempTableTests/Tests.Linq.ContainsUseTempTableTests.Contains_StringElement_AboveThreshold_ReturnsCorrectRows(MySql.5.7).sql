-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TEMPORARY TABLE `T_aab52302dc20`
(
	`item` VARCHAR(4000)     NULL
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `T_aab52302dc20`
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
			`T_aab52302dc20` `t1`
		WHERE
			`r`.`Name` = `t1`.`item` OR `r`.`Name` IS NULL AND `t1`.`item` IS NULL
	)
ORDER BY
	`r`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TEMPORARY TABLE IF EXISTS `T_aab52302dc20`

