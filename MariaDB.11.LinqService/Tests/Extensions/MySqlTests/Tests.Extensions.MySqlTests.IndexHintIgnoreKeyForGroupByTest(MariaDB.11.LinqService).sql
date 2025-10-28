BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`p`.`ParentID`,
	`p`.`ChildID`
FROM
	`Child` `p` IGNORE KEY FOR GROUP BY(IX_ChildIndex, IX_ChildIndex2)

