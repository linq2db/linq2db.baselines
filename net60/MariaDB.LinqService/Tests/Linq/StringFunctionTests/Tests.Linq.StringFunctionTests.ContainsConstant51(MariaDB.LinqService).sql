BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @ps VarChar(1) -- String
SET     @ps = '['

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND LOCATE(@ps, '123[456') > 0

