BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`a_QueryableChildren`.`ParentID`,
	`a_QueryableChildren`.`ChildID`
FROM
	`Parent` `t1`
		INNER JOIN `Child` `a_QueryableChildren` ON `t1`.`ParentID` = `a_QueryableChildren`.`ParentID`

