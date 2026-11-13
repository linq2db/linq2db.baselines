-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	CASE
		WHEN `r`.`F` * 2 = ROUND(`r`.`F` * 2, `r`.`P`) AND `r`.`F` <> ROUND(`r`.`F`, `r`.`P`)
			THEN ROUND(`r`.`F` / 2, `r`.`P`) * 2
		ELSE ROUND(`r`.`F`, `r`.`P`)
	END
FROM
	`ResidueValues` `r`
ORDER BY
	`r`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`F`,
	`t1`.`P`
FROM
	`ResidueValues` `t1`

