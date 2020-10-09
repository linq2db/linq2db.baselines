BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	Right(`p`.`FirstName`, 3)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1

