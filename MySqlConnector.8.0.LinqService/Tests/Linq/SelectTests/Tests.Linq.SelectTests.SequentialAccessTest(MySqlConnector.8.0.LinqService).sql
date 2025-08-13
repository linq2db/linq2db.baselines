BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`PersonID`,
	`p`.`LastName`,
	Concat(`p`.`FirstName`, ' ', `p`.`LastName`)
FROM
	`Person` `p`

