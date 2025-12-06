-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`,
	`p`.`MiddleName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1

