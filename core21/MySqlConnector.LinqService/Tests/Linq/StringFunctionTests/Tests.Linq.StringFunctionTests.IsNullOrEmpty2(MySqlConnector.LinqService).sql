BeforeExecute
-- MySqlConnector MySql

SELECT 
	(`p`.`FirstName` IS NULL OR Char_Length(`p`.`FirstName`) = 0)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1

