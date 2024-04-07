BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	Trim(Concat('  ', `p`.`FirstName`, ' ')) = 'John' AND
	`p`.`PersonID` = 1

