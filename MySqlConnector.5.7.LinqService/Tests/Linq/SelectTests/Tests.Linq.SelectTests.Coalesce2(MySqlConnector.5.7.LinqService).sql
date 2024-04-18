BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`PersonID`,
	Coalesce(`p`.`MiddleName`, `p`.`FirstName`, 'None'),
	Coalesce(`p`.`LastName`, `p`.`FirstName`, 'None'),
	Coalesce(`p`.`MiddleName`, `p`.`MiddleName`, 'None')
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1

