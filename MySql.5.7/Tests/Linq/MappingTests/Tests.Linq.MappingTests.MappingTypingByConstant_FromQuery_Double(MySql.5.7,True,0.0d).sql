-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ID`,
	`t1`.`Value_1`
FROM
	(
		SELECT
			`r`.`PersonID` as `ID`,
			CAST(0 AS DECIMAL(29, 10)) as `Value_1`
		FROM
			`Person` `r`
	) `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ID`,
	`t1`.`Value_1`
FROM
	(
		SELECT
			`r`.`PersonID` as `ID`,
			CAST(3147483648 AS DECIMAL(29, 10)) as `Value_1`
		FROM
			`Person` `r`
	) `t1`

