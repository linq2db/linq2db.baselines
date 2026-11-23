-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	Power(CAST(`r`.`B` + `r`.`C` AS DECIMAL(29, 10)), 2),
	Power(CAST(`r`.`C` AS DECIMAL(29, 10)), CAST(`r`.`B` + `r`.`C` AS DECIMAL(29, 10))),
	Power(CAST(`r`.`B` AS DECIMAL(29, 10)), 2) + `r`.`C`,
	Power(CAST(`r`.`B` - `r`.`C` AS DECIMAL(29, 10)), 2),
	Power(CAST(`r`.`C` AS DECIMAL(29, 10)), CAST(`r`.`B` - `r`.`C` AS DECIMAL(29, 10))),
	Power(CAST(`r`.`B` AS DECIMAL(29, 10)), 2) - `r`.`C`,
	Power(CAST(`r`.`B` * `r`.`C` AS DECIMAL(29, 10)), 2),
	Power(CAST(`r`.`C` AS DECIMAL(29, 10)), CAST(`r`.`B` * `r`.`C` AS DECIMAL(29, 10))),
	Power(CAST(`r`.`B` AS DECIMAL(29, 10)), 2) * `r`.`C`,
	Power(CAST(`r`.`B` DIV `r`.`C` AS DECIMAL(29, 10)), 2),
	Power(CAST(`r`.`C` AS DECIMAL(29, 10)), CAST(`r`.`B` DIV `r`.`C` AS DECIMAL(29, 10))),
	Power(CAST(`r`.`B` AS DECIMAL(29, 10)), 2) / `r`.`C`,
	Power(CAST(-`r`.`B` AS DECIMAL(29, 10)), 2),
	-Power(CAST(`r`.`B` AS DECIMAL(29, 10)), 2),
	Power(CAST(`r`.`C` AS DECIMAL(29, 10)), Power(CAST(`r`.`C` AS DECIMAL(29, 10)), CAST(`r`.`C` AS DECIMAL(29, 10)))),
	Power(Power(CAST(`r`.`C` AS DECIMAL(29, 10)), CAST(-`r`.`B` AS DECIMAL(29, 10))), CAST(`r`.`C` AS DECIMAL(29, 10))),
	Power(CAST(`r`.`B` + `r`.`C` AS DECIMAL(29, 10)), 2)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

