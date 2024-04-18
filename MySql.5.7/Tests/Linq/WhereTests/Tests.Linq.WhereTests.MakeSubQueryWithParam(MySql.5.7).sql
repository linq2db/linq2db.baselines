BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @n Int32
SET     @n = 1

SELECT
	`p`.`PersonID` + @n,
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` + @n = 2

