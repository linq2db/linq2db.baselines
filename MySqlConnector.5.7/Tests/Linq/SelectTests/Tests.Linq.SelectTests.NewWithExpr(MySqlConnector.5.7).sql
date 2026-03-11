-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`PersonID`,
	TRIM(TRAILING '' FROM Concat(`p`.`FirstName`, '1'))
FROM
	`Person` `p`

