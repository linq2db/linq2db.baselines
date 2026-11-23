-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	(`r`.`A` + `r`.`B`) DIV `r`.`C`,
	`r`.`A` DIV (`r`.`B` + `r`.`C`),
	(`r`.`A` + `r`.`B`) DIV `r`.`C`,
	`r`.`A` DIV (`r`.`B` + `r`.`C`),
	(`r`.`A` - `r`.`B`) DIV `r`.`C`,
	`r`.`A` DIV (`r`.`B` - `r`.`C`),
	(`r`.`A` - `r`.`B`) DIV `r`.`C`,
	`r`.`A` DIV (`r`.`B` - `r`.`C`),
	`r`.`A` DIV (`r`.`B` * `r`.`C`),
	`r`.`A` DIV (`r`.`B` * `r`.`C`),
	(`r`.`A` DIV `r`.`B`) DIV `r`.`C`,
	`r`.`A` DIV (`r`.`B` DIV `r`.`C`),
	(`r`.`A` DIV `r`.`B`) DIV `r`.`C`,
	`r`.`A` DIV (`r`.`B` DIV `r`.`C`),
	`r`.`A` DIV CAST(`r`.`B` ^ `r`.`C` AS SIGNED),
	`r`.`A` DIV CAST(`r`.`B` ^ `r`.`C` AS SIGNED),
	(`r`.`A` + `r`.`B`) DIV `r`.`C`,
	`r`.`A` DIV (`r`.`B` + `r`.`C`),
	(`r`.`A` + -6) DIV `r`.`C`,
	(`r`.`A` - `r`.`B`) DIV `r`.`C`,
	`r`.`A` DIV (`r`.`B` - `r`.`C`),
	(`r`.`A` - -6) DIV `r`.`C`,
	(`r`.`A` * `r`.`B`) DIV `r`.`C`,
	`r`.`A` DIV (`r`.`B` * `r`.`C`),
	(`r`.`A` * -6) DIV `r`.`C`,
	(`r`.`A` / `r`.`B`) DIV `r`.`C`,
	`r`.`A` DIV (`r`.`B` / `r`.`C`),
	(`r`.`A` / -6) DIV `r`.`C`,
	(`r`.`A` + `r`.`B`) DIV `r`.`C`,
	`r`.`A` DIV (`r`.`B` + `r`.`C`),
	(`r`.`A` + -6) DIV `r`.`C`,
	`r`.`A` DIV -`r`.`B`,
	(`r`.`A` - `r`.`B`) DIV `r`.`C`,
	(`r`.`A` + `r`.`B`) DIV `r`.`C`,
	(`r`.`A` DIV -`r`.`B`) DIV `r`.`C`,
	CAST(`r`.`A` & -`r`.`B` AS SIGNED) DIV `r`.`C`,
	CAST(`r`.`A` ^ -`r`.`B` AS SIGNED) DIV `r`.`C`,
	(`r`.`A` * CAST(~`r`.`B` AS SIGNED)) DIV `r`.`C`,
	(`r`.`A` * -5) DIV `r`.`C`,
	CAST(`r`.`A` & -5 AS SIGNED) DIV `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	(`r`.`A` * -5) DIV `r`.`C`,
	CAST(`r`.`A` & -5 AS SIGNED) DIV `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

