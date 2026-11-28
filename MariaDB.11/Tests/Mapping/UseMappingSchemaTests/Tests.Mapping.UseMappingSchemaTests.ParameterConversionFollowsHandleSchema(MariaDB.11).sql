-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @id Int32
SET     @id = 2

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`
WHERE
	CAST(`p`.`ParentID` AS SIGNED) = @id

