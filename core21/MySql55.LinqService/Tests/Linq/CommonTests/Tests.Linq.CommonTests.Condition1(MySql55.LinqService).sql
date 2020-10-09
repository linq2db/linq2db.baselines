BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	(`p`.`FirstName` IS NULL OR Char_Length(`p`.`FirstName`) = 0), 
	`p`.`FirstName`, 
	(`p`.`MiddleName` IS NULL OR Char_Length(`p`.`MiddleName`) = 0), 
	`p`.`MiddleName`, 
	`p`.`LastName`
FROM
	`Person` `p`

