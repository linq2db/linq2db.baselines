BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x_1`.`Id`,
	`x_1`.`StatusName`
FROM
	(
		SELECT
			CASE
				WHEN (
					SELECT
						`y`.`PersonID`
					FROM
						`Patient` `y`
					WHERE
						`y`.`PersonID` = `x`.`PersonID`
					LIMIT 1
				) IS NOT NULL
					THEN (
					SELECT
						`y_1`.`Diagnosis`
					FROM
						`Patient` `y_1`
					WHERE
						`y_1`.`PersonID` = `x`.`PersonID`
					LIMIT 1
				)
				ELSE 'abc'
			END as `StatusName`,
			CASE
				WHEN (
					SELECT
						`y`.`PersonID`
					FROM
						`Patient` `y`
					WHERE
						`y`.`PersonID` = `x`.`PersonID`
					LIMIT 1
				) IS NOT NULL
					THEN (
					SELECT
						`y`.`PersonID`
					FROM
						`Patient` `y`
					WHERE
						`y`.`PersonID` = `x`.`PersonID`
					LIMIT 1
				)
				ELSE `x`.`PersonID`
			END as `Id`
		FROM
			`Person` `x`
	) `x_1`
WHERE
	`x_1`.`StatusName` = 'abc'

