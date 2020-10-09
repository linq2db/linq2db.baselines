BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	`p`.`FirstName`, 
	`p`.`PersonID`, 
	`p`.`LastName`, 
	`p`.`MiddleName`, 
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	Substring(`p`.`FirstName`, 2, Char_Length(`p`.`FirstName`) - 1) = 'ohn' AND
	`p`.`PersonID` = 1

