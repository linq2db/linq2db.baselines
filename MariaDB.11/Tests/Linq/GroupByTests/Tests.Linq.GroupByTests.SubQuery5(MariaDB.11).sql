BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	SUM(`g_1`.`ParentID`)
FROM
	`Child` `g_1`
		LEFT JOIN `Parent` `p` ON `g_1`.`ParentID` = `p`.`ParentID`
GROUP BY
	`g_1`.`ChildID`

