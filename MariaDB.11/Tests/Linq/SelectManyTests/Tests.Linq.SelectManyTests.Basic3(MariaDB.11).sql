BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`_`.`ParentID` + 1
FROM
	`Parent` `p`,
	`Child` `_`
WHERE
	`_`.`ParentID` + 1 > 1

