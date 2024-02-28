BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @n Int32
SET     @n = 1

SELECT
	`p`.`PersonID` + @n,
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` + @n = 2

