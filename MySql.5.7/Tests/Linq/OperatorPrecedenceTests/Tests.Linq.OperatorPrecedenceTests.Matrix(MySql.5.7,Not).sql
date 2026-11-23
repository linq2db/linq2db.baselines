-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CAST(~(`r`.`A` + `r`.`B`) AS SIGNED),
	CAST(~(`r`.`A` + `r`.`B`) AS SIGNED),
	CAST(~(`r`.`A` - `r`.`B`) AS SIGNED),
	CAST(~(`r`.`A` - `r`.`B`) AS SIGNED),
	CAST(~(`r`.`A` * `r`.`B`) AS SIGNED),
	CAST(~(`r`.`A` * `r`.`B`) AS SIGNED),
	CAST(~(`r`.`A` DIV `r`.`B`) AS SIGNED),
	CAST(~(`r`.`A` DIV `r`.`B`) AS SIGNED),
	CAST(~CAST(`r`.`A` & `r`.`B` AS SIGNED) AS SIGNED),
	CAST(~CAST(`r`.`A` & `r`.`B` AS SIGNED) AS SIGNED),
	CAST(~CAST(`r`.`A` | `r`.`B` AS SIGNED) AS SIGNED),
	CAST(~CAST(`r`.`A` | `r`.`B` AS SIGNED) AS SIGNED),
	CAST(~(-`r`.`B`) AS SIGNED),
	CAST(~CAST(~`r`.`B` AS SIGNED) AS SIGNED),
	CAST(~(-5) AS SIGNED),
	CAST(~(-5 * `r`.`B`) AS SIGNED)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CAST(~(-5) AS SIGNED)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

