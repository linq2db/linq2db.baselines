BeforeExecute
-- MySqlConnector MySql

SELECT 
	`p`.`PersonID`, 
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	RTrim(Concat('  ', `p`.`FirstName`, ' ')) = '  John' AND
	`p`.`PersonID` = 1

