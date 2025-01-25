BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @s VarChar(7) -- String
SET     @s = '123n456'

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND LOCATE('n', @s) > 0

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @s VarChar(7) -- String
SET     @s = '123n456'

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND LOCATE('n', @s) <= 0

