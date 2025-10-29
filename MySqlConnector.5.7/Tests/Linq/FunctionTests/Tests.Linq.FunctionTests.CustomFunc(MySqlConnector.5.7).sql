-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Concat(`p`.`LastName`, ', ', `p`.`FirstName`)
FROM
	`Person` `p`
WHERE
	Concat(`p`.`LastName`, ', ', `p`.`FirstName`) = 'Pupkin, John'

