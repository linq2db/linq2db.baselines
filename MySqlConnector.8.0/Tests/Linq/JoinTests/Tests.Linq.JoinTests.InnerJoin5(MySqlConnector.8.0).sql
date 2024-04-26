BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p1`.`PersonID`,
	`p1`.`FirstName`,
	`p1`.`LastName`
FROM
	`Person` `p1`
WHERE
	`p1`.`PersonID` = 1 AND `p1`.`FirstName` = `p1`.`FirstName` AND
	`p1`.`LastName` = `p1`.`LastName`

