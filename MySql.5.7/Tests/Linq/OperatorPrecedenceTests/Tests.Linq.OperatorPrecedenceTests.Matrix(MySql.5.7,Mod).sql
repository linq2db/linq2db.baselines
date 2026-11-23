-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	(`r`.`A` + `r`.`B`) % `r`.`C`,
	`r`.`A` % (`r`.`B` + `r`.`C`),
	(`r`.`A` + `r`.`B`) % `r`.`C`,
	`r`.`A` % (`r`.`B` + `r`.`C`),
	(`r`.`A` - `r`.`B`) % `r`.`C`,
	`r`.`A` % (`r`.`B` - `r`.`C`),
	(`r`.`A` - `r`.`B`) % `r`.`C`,
	`r`.`A` % (`r`.`B` - `r`.`C`),
	(`r`.`A` DIV `r`.`B`) % `r`.`C`,
	(`r`.`A` DIV `r`.`B`) % `r`.`C`,
	`r`.`A` % `r`.`B` % `r`.`C`,
	`r`.`A` % `r`.`B` % `r`.`C`,
	CAST(`r`.`A` & `r`.`B` AS SIGNED) % `r`.`C`,
	CAST(`r`.`A` & `r`.`B` AS SIGNED) % `r`.`C`,
	CAST(`r`.`A` | `r`.`B` AS SIGNED) % `r`.`C`,
	`r`.`A` % CAST(`r`.`B` | `r`.`C` AS SIGNED),
	CAST(`r`.`A` | `r`.`B` AS SIGNED) % `r`.`C`,
	`r`.`A` % CAST(`r`.`B` | `r`.`C` AS SIGNED),
	CAST(`r`.`A` ^ `r`.`B` AS SIGNED) % `r`.`C`,
	`r`.`A` % CAST(`r`.`B` ^ `r`.`C` AS SIGNED),
	CAST(`r`.`A` ^ `r`.`B` AS SIGNED) % `r`.`C`,
	`r`.`A` % CAST(`r`.`B` ^ `r`.`C` AS SIGNED),
	(`r`.`A` + `r`.`B`) % `r`.`C`,
	`r`.`A` % (`r`.`B` + `r`.`C`),
	(`r`.`A` + -6) % `r`.`C`,
	(`r`.`A` - `r`.`B`) % `r`.`C`,
	`r`.`A` % (`r`.`B` - `r`.`C`),
	(`r`.`A` - -6) % `r`.`C`,
	(`r`.`A` * `r`.`B`) % `r`.`C`,
	`r`.`A` % (`r`.`B` * `r`.`C`),
	(`r`.`A` * -6) % `r`.`C`,
	(`r`.`A` / `r`.`B`) % `r`.`C`,
	`r`.`A` % (`r`.`B` / `r`.`C`),
	(`r`.`A` / -6) % `r`.`C`,
	(`r`.`A` + `r`.`B`) % `r`.`C`,
	`r`.`A` % (`r`.`B` + `r`.`C`),
	(`r`.`A` + -6) % `r`.`C`,
	`r`.`A` % -`r`.`B`,
	(`r`.`A` - `r`.`B`) % `r`.`C`,
	(`r`.`A` + `r`.`B`) % `r`.`C`,
	(`r`.`A` DIV -`r`.`B`) % `r`.`C`,
	`r`.`A` % -`r`.`B` % `r`.`C`,
	CAST(`r`.`A` | -`r`.`B` AS SIGNED) % `r`.`C`,
	CAST(`r`.`A` ^ -`r`.`B` AS SIGNED) % `r`.`C`,
	`r`.`A` % CAST(~`r`.`B` AS SIGNED),
	(`r`.`A` + CAST(~`r`.`B` AS SIGNED)) % `r`.`C`,
	(`r`.`A` - CAST(~`r`.`B` AS SIGNED)) % `r`.`C`,
	`r`.`A` * CAST(~`r`.`B` AS SIGNED) % `r`.`C`,
	`r`.`A` % CAST(~`r`.`B` AS SIGNED) % `r`.`C`,
	CAST(`r`.`A` & CAST(~`r`.`B` AS SIGNED) AS SIGNED) % `r`.`C`,
	CAST(`r`.`A` | CAST(~`r`.`B` AS SIGNED) AS SIGNED) % `r`.`C`,
	CAST(`r`.`A` ^ CAST(~`r`.`B` AS SIGNED) AS SIGNED) % `r`.`C`,
	`r`.`A` % -5,
	-5 % `r`.`C`,
	(`r`.`A` + -5) % `r`.`C`,
	(`r`.`A` - -5) % `r`.`C`,
	`r`.`A` * -5 % `r`.`C`,
	`r`.`A` % -5 % `r`.`C`,
	CAST(`r`.`A` & -5 AS SIGNED) % `r`.`C`,
	CAST(`r`.`A` | -5 AS SIGNED) % `r`.`C`,
	CAST(`r`.`A` ^ -5 AS SIGNED) % `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`A` % -5,
	-5 % `r`.`C`,
	(`r`.`A` + -5) % `r`.`C`,
	(`r`.`A` - -5) % `r`.`C`,
	`r`.`A` * -5 % `r`.`C`,
	`r`.`A` % -5 % `r`.`C`,
	CAST(`r`.`A` & -5 AS SIGNED) % `r`.`C`,
	CAST(`r`.`A` | -5 AS SIGNED) % `r`.`C`,
	CAST(`r`.`A` ^ -5 AS SIGNED) % `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

