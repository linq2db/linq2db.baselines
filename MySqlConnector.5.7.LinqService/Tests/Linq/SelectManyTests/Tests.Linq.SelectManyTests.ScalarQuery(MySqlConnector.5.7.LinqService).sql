BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p2`.`PersonID`,
	`t1`.`FirstName`
FROM
	`Person` `t1`,
	`Person` `p2`
WHERE
	`t1`.`PersonID` = `p2`.`PersonID`

