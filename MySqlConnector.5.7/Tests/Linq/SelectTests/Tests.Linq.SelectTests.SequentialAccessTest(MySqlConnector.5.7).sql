-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`PersonID`,
	`p`.`LastName`,
	CONCAT(`p`.`FirstName`, ' ', `p`.`LastName`)
FROM
	`Person` `p`

