-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`,
	`p`.`LastName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND `p`.`FirstName` = 'John' AND
	`p`.`LastName` = 'Pupkin'
LIMIT 2

