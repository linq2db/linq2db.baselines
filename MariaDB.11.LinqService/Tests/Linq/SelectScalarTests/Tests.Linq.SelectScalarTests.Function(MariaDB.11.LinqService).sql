BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @text VarChar(3) -- String
SET     @text = '123'

SELECT
	Concat(CAST(`c_1`.`ChildID` AS CHAR(11)), ',', Coalesce(@text, ''))
FROM
	`Child` `c_1`
LIMIT 1

