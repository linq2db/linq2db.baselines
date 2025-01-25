BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Concat(`p`.`LastName`, ', ', `p`.`FirstName`)
FROM
	`Person` `p`
WHERE
	Concat(`p`.`LastName`, ', ', `p`.`FirstName`) = 'Pupkin, John'

