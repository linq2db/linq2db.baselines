-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ID`,
	`t1`.`Value_1`
FROM
	(
		SELECT
			`r`.`PersonID` as `ID`,
			0 as `Value_1`
		FROM
			`Person` `r`
	) `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ID`,
	`t1`.`Value_1`
FROM
	(
		SELECT
			`r`.`PersonID` as `ID`,
			3.14748365E+09 as `Value_1`
		FROM
			`Person` `r`
	) `t1`

