BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @s VarChar(8) -- String
SET     @s = '123]]456'

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND LOCATE(']]', @s) > 0

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @s VarChar(8) -- String
SET     @s = '123]]456'

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND (LOCATE(']]', @s) <= 0)

