BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @str VarChar(3) -- String
SET     @str = 'o%h'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	(LOCATE(@str, `p`.`FirstName`) <= 0) AND `p`.`PersonID` = 1

