BeforeExecute
-- MySql MySql.Official MySql
DECLARE @s VarChar(8) -- String
SET     @s = '123[]456'
DECLARE @toTest VarChar(6) -- String
SET     @toTest = '%~[~]%'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND @s LIKE @toTest ESCAPE '~'

