-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x_2`.`Id`,
	`x_2`.`StatusName`
FROM
	(
		SELECT
			CASE
				WHEN `x_1`.`PersonID` IS NOT NULL THEN `x_1`.`Diagnosis`
				ELSE 'abc'
			END as `StatusName`,
			CASE
				WHEN `x_1`.`PersonID` IS NOT NULL THEN `x_1`.`PersonID`
				ELSE `x_1`.`ID`
			END as `Id`
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
					) as `Diagnosis`,
					`x`.`PersonID` as `ID`
				FROM
					`Person` `x`
			) `x_1`
	) `x_2`
WHERE
	`x_2`.`StatusName` = 'abc'

