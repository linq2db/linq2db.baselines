-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`PersonID`,
	`t1`.`Diagnosis`
FROM
	`Patient` `t1`
ORDER BY
	`t1`.`PersonID`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`PersonID`,
	`t1`.`Taxonomy`
FROM
	`Doctor` `t1`
ORDER BY
	`t1`.`PersonID`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`
ORDER BY
	`t1`.`PersonID`

