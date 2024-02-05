BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @ps VarChar(1) -- String
SET     @ps = '['
DECLARE @s VarChar(7) -- String
SET     @s = '123[456'

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND LOCATE(@ps, @s) > 0

