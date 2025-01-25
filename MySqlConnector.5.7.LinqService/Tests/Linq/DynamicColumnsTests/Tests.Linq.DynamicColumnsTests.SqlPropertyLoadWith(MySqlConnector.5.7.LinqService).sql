BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`PersonID`,
	`t1`.`FirstName`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`a_Patient`.`PersonID`,
	`a_Patient`.`Diagnosis`
FROM
	`Person` `t1`
		LEFT JOIN `Patient` `a_Patient` ON `t1`.`PersonID` = `a_Patient`.`PersonID`

