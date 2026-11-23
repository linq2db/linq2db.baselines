-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CAST(`r`.`A` + `r`.`B` AS CHAR(11)),
	CAST(`r`.`A` - `r`.`B` AS CHAR(11)),
	CAST(`r`.`A` * `r`.`B` AS CHAR(11)),
	CAST(`r`.`A` DIV `r`.`B` AS CHAR(11)),
	CAST(`r`.`A` % `r`.`B` AS CHAR(11)),
	CAST(CAST(`r`.`A` & `r`.`B` AS SIGNED) AS CHAR(11)),
	CAST(CAST(`r`.`A` | `r`.`B` AS SIGNED) AS CHAR(11)),
	CAST(CAST(`r`.`A` ^ `r`.`B` AS SIGNED) AS CHAR(11)),
	CAST(-`r`.`A` AS CHAR(11)),
	CAST(CAST(~`r`.`A` AS SIGNED) AS CHAR(11))
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

