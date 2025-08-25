BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @filter1 VarChar(4) -- String
SET     @filter1 = 'John'
DECLARE @filter2 VarChar(6) -- String
SET     @filter2 = 'Tester'

SELECT
	`t1`.`PersonID`,
	`t1`.`Diagnosis`
FROM
	`Patient` `t1`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Person` `e`
		WHERE
			LOCATE(@filter1, `e`.`FirstName`) > 0 AND `e`.`PersonID` = (
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
			LOCATE(@filter2, `e_1`.`FirstName`) > 0 AND `e_1`.`PersonID` = (
				SELECT
					`d_1`.`PersonID`
				FROM
					`Patient` `d_1`
				LIMIT 1
			)
	)
ORDER BY
	`t1`.`PersonID`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	`t1`.`PersonID`,
	`t1`.`Diagnosis`
FROM
	`Patient` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

