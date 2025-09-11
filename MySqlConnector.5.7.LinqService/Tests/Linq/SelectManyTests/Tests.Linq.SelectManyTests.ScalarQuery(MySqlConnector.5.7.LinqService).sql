BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	`p2`.`PersonID`,
	`p1`.`FirstName`
FROM
	`Person` `p1`
		CROSS JOIN `Person` `p2`
WHERE
	`p1`.`PersonID` = `p2`.`PersonID`

