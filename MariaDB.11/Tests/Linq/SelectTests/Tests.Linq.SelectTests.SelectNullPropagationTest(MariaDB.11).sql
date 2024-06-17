BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @p Int32
SET     @p = 0

SELECT
	CASE
		WHEN `q`.`ParentID` IS NOT NULL THEN `q`.`ParentID`
		ELSE @p
	END
FROM
	`Parent` `q`

