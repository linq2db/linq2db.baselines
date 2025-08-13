BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @toTest VarChar(1) -- String
SET     @toTest = '['
DECLARE @s VarChar(7) -- String
SET     @s = '123[456'

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND LOCATE(@toTest, @s) > 0

