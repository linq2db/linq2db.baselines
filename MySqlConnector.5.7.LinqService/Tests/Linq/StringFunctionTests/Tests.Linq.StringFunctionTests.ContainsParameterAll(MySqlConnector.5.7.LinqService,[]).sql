BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @toTest VarChar(2) -- String
SET     @toTest = '[]'
DECLARE @s VarChar(8) -- String
SET     @s = '123[]456'

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND LOCATE(@toTest, @s) > 0

