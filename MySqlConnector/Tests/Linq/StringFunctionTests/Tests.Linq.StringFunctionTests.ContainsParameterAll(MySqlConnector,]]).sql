BeforeExecute
-- MySqlConnector MySql
DECLARE @toTest VarChar(2) -- String
SET     @toTest = ']]'
DECLARE @s VarChar(8) -- String
SET     @s = '123]]456'

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND LOCATE(@toTest, @s) > 0

