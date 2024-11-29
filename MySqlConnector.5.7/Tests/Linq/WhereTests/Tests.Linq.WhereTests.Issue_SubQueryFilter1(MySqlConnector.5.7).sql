BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
			1
		FROM
			`Person` `e`,
			(
				SELECT
					`d`.`PersonID`
				FROM
					`Patient` `d`
				LIMIT 1
			) `t2`
		WHERE
			LOCATE(@filter1, `e`.`FirstName`) > 0 AND `e`.`PersonID` = `t2`.`PersonID`
	) OR
	EXISTS(
		SELECT
			1
		FROM
			`Person` `e_1`,
			(
				SELECT
					`d_1`.`PersonID`
				FROM
					`Patient` `d_1`
				LIMIT 1
			) `t3`
		WHERE
			LOCATE(@filter2, `e_1`.`FirstName`) > 0 AND `e_1`.`PersonID` = `t3`.`PersonID`
	)
ORDER BY
	`t1`.`PersonID`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`PersonID`,
	`t1`.`Diagnosis`
FROM
	`Patient` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

