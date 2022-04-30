BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`p`.`PersonID` + 1,
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1

