BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ps VarChar(1) -- String
SET     @ps = '['

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND LOCATE(@ps, '123[456') > 0

