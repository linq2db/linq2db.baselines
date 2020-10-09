BeforeExecute
-- MySqlConnector MySql
DECLARE @s VarChar(7) -- String
SET     @s = '123N456'
DECLARE @toTest VarChar(3) -- String
SET     @toTest = '%N%'

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

