BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @text VarChar(3) -- String
SET     @text = '123'

SELECT
	Concat(`c_1`.`ChildID`, ',', Coalesce(@text, ''))
FROM
	`Child` `c_1`
LIMIT 1

