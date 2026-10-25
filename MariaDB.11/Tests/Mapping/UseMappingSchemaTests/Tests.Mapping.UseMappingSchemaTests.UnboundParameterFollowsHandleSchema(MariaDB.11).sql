-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @token VarChar(2) -- String
SET     @token = 'Bx'

SELECT
	@token
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1

