BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`PersonID`,
	Coalesce(`p`.`FirstName`, 'None'),
	Coalesce(`p`.`MiddleName`, 'None')
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1

