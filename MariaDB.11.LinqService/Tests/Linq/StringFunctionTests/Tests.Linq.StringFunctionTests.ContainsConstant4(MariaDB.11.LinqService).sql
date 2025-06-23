BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @s VarChar(7) -- String
SET     @s = '123[456'

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND LOCATE('[', @s) > 0

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @s VarChar(7) -- String
SET     @s = '123[456'

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND NOT LOCATE('[', @s) > 0

