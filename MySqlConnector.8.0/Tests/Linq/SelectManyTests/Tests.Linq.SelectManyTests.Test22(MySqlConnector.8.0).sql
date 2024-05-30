BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`PersonID`,
	`p2`.`FirstName`,
	`p3`.`LastName`
FROM
	`Person` `p`
		CROSS JOIN `Person` `p2`
		CROSS JOIN `Person` `p3`
WHERE
	`p`.`PersonID` = `p2`.`PersonID` AND `p`.`LastName` = `p3`.`LastName` AND
	`p`.`PersonID` = 1

