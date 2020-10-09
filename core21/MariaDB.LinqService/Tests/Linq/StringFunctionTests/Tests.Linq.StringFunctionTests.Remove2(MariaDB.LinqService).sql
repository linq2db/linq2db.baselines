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
	Concat(Left(`p`.`FirstName`, 1), Right(`p`.`FirstName`, Char_Length(`p`.`FirstName`) - 3)) = 'Jn' AND
	`p`.`PersonID` = 1

