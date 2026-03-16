-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x_1`.`Id`,
	`x_1`.`StatusName`
FROM
	(
		SELECT
			(
				SELECT
					`y`.`Diagnosis`
				FROM
					`Patient` `y`
				WHERE
					`y`.`PersonID` = `x`.`PersonID`
				LIMIT 1
			) as `StatusName`,
			(
				SELECT
					`y_1`.`PersonID`
				FROM
					`Patient` `y_1`
				WHERE
					`y_1`.`PersonID` = `x`.`PersonID`
				LIMIT 1
			) as `Id`
		FROM
			`Person` `x`
	) `x_1`
WHERE
	`x_1`.`StatusName` = 'abc'

