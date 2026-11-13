-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`p`.`PersonID`,
	`p`.`Gender`
FROM
	`Person` `p`
ORDER BY
	`p`.`Gender`,
	`p`.`PersonID`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

