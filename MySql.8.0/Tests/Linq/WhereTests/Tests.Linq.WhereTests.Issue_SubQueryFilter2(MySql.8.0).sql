-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @filter1 VarChar(4) -- String
SET     @filter1 = 'John'
DECLARE @filter2 VarChar(6) -- String
SET     @filter2 = 'Tester'

SELECT
	`p`.`PersonID`,
	`p`.`Diagnosis`
FROM
	`Patient` `p`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Person` `e`
		WHERE
			`e`.`PersonID` = `p`.`PersonID` AND LOCATE(@filter1, `e`.`FirstName`) > 0 AND
			`e`.`PersonID` = (
				SELECT
					`d`.`PersonID`
				FROM
					`Patient` `d`
				LIMIT 1
			)
	) OR
	EXISTS(
		SELECT
			*
		FROM
			`Person` `e_1`
		WHERE
			`e_1`.`PersonID` = `p`.`PersonID` AND LOCATE(@filter2, `e_1`.`FirstName`) > 0 AND
			`e_1`.`PersonID` = (
				SELECT
					`d_1`.`PersonID`
				FROM
					`Patient` `d_1`
				LIMIT 1
			)
	)
ORDER BY
	`p`.`PersonID`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`PersonID`,
	`t1`.`Diagnosis`
FROM
	`Patient` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

