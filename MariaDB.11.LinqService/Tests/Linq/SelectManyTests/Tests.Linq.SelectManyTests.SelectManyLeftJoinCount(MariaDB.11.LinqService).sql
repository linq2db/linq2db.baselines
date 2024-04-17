BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Parent` `p`
		LEFT JOIN `Child` `o` ON `p`.`ParentID` = `o`.`ParentID`

