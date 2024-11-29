BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @toTest VarChar(2) -- String
SET     @toTest = ']]'
DECLARE @s VarChar(8) -- String
SET     @s = '123]]456'

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND LOCATE(@toTest, @s) > 0

