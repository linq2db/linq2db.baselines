BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @toTest VarChar(1) -- String
SET     @toTest = 'n'
DECLARE @s VarChar(7) -- String
SET     @s = '123n456'

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND LOCATE(@toTest, @s) > 0

