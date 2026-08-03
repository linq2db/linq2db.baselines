-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`PersonID`,
	`t1`.`Diagnosis`
FROM
	(
		SELECT
			(
				SELECT
					`y`.`PersonID`
				FROM
					`Patient` `y`
				WHERE
					`y`.`PersonID` = `x`.`PersonID`
				LIMIT 1
			) as `PersonID`,
			(
				SELECT
					`y_1`.`Diagnosis`
				FROM
					`Patient` `y_1`
				WHERE
					`y_1`.`PersonID` = `x`.`PersonID`
				LIMIT 1
			) as `Diagnosis`
		FROM
			`Person` `x`
	) `t1`
WHERE
	`t1`.`PersonID` IS NULL OR `t1`.`Diagnosis` = 'abc'

