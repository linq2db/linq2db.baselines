BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Parent` `t1`
		LEFT JOIN `Child` `c_1` ON `t1`.`ParentID` = `c_1`.`ParentID`

