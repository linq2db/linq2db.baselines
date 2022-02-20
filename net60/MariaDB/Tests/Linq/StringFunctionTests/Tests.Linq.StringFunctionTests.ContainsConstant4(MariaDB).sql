BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @s VarChar(7) -- String
SET     @s = '123[456'

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND LOCATE('[', @s) > 0

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @s VarChar(7) -- String
SET     @s = '123[456'

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND (LOCATE('[', @s) <= 0)

