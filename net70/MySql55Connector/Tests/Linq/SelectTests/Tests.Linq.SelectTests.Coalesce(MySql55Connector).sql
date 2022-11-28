BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`p`.`PersonID`,
	Coalesce(`p`.`FirstName`, 'None'),
	Coalesce(`p`.`MiddleName`, 'None')
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1

