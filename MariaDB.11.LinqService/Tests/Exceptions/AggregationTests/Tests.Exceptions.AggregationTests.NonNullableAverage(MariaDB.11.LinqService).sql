BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Avg(`_`.`ParentID`)
FROM
	`Parent` `_`
WHERE
	`_`.`ParentID` < 0

