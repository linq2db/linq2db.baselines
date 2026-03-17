-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ID`,
	`t1`.`Value_1`
FROM
	(
		SELECT
			`r`.`PersonID` as `ID`,
			CAST(NULL AS SIGNED) as `Value_1`
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
			CAST(2147483648 AS SIGNED) as `Value_1`
		FROM
			`Person` `r`
	) `t1`

