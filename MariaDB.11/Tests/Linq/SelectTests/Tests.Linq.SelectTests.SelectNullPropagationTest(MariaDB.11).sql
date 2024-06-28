BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	CASE
		WHEN `q`.`ParentID` IS NOT NULL THEN `q`.`ParentID`
		ELSE 0
	END
FROM
	`Parent` `q`

