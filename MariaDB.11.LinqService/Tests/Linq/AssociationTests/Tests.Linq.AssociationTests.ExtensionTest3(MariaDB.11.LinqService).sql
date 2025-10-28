BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`a_Parent`.`ParentID`
FROM
	`Child` `t1`
		LEFT JOIN `Parent` `a_Parent` ON `t1`.`ParentID` = `a_Parent`.`ParentID`

