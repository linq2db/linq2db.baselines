BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)

-- MySql55 MySql.Official MySql
SELECT 
	`p`.`FirstName`, 
	`p`.`PersonID`, 
	`p`.`LastName`, 
	`p`.`MiddleName`, 
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1
LIMIT 1

