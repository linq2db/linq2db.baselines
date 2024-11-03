BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p1`.`PersonID`,
	`p2`.`FirstName`
FROM
	`Person` `p1`
		INNER JOIN `Person` `p2` ON `p1`.`PersonID` = `p2`.`PersonID`
WHERE
	`p1`.`PersonID` = 1

