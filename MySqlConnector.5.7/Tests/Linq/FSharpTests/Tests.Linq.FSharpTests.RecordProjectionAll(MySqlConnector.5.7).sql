-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`,
	`p`.`LastName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1
LIMIT 2

