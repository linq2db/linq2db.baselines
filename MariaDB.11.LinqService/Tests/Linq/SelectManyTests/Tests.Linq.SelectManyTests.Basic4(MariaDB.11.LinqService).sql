BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`_`.`ParentID` + 1
FROM
	`Parent` `p`
		INNER JOIN `Child` `_` ON `p`.`ParentID` = `_`.`ParentID` + 1

