-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	CONCAT(`p`.`LastName`, ', ', `p`.`FirstName`)
FROM
	`Person` `p`
WHERE
	(CONCAT(`p`.`LastName`, ', ', `p`.`FirstName`)) = 'Pupkin, John'

