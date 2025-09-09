BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @filter VarChar(4) -- String
SET     @filter = 'John'
DECLARE @filter_1 VarChar(6) -- String
SET     @filter_1 = 'Tester'

SELECT
	`patient_1`.`PersonID`,
	`patient_1`.`Diagnosis`
FROM
	`Patient` `patient_1`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Person` `p`
		WHERE
			LOCATE(@filter, `p`.`FirstName`) > 0 AND `p`.`PersonID` = (
				SELECT
					`d`.`PersonID`
				FROM
					`Person` `d`
				WHERE
					`d`.`PersonID` = `patient_1`.`PersonID`
				LIMIT 1
			)
	) AND
	EXISTS(
		SELECT
			*
		FROM
			`Person` `p_1`
		WHERE
			LOCATE(@filter_1, `p_1`.`FirstName`) > 0 AND `p_1`.`PersonID` = (
				SELECT
					`d_1`.`PersonID`
				FROM
					`Person` `d_1`
				WHERE
					`d_1`.`PersonID` = `patient_1`.`PersonID`
				LIMIT 1
			)
	)
ORDER BY
	`patient_1`.`PersonID`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`t1`.`PersonID`,
	`t1`.`Diagnosis`
FROM
	`Patient` `t1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

