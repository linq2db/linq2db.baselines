BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p1`.`PersonID`,
	`p2`.`FirstName`
FROM
	`Person` `p1`
		INNER JOIN `Person` `p2` ON `p1`.`PersonID` = `p2`.`PersonID`
WHERE
	`p1`.`PersonID` = 1

