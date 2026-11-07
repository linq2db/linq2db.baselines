-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	sign(`r`.`F`) * (CASE
		WHEN abs(`r`.`F`) * power(10, `r`.`P`) - floor(abs(`r`.`F`) * power(10, `r`.`P`)) = 0.5
			THEN floor(abs(`r`.`F`) * power(10, `r`.`P`)) + 1
		ELSE round(abs(`r`.`F`) * power(10, `r`.`P`), 0)
	END / power(10, `r`.`P`))
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

