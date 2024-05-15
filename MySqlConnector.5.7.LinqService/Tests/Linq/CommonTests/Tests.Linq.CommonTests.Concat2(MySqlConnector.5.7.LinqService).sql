BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	Concat(`p`.`FirstName`, ' ', 1) = 'John 1'

