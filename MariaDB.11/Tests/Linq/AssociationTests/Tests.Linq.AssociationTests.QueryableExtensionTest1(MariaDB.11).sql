BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`a_QueryableChildren`.`ParentID`,
	`a_QueryableChildren`.`ChildID`
FROM
	`Parent` `_`
		INNER JOIN `Child` `a_QueryableChildren` ON `_`.`ParentID` = `a_QueryableChildren`.`ParentID`

