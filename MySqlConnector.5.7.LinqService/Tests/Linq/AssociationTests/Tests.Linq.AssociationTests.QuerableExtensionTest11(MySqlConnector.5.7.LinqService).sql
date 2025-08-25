BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	`a_QueryableChildren`.`ParentID`,
	`a_QueryableChildren`.`ChildID`
FROM
	`Parent` `t1`
		INNER JOIN `Child` `a_QueryableChildren` ON `t1`.`ParentID` = `a_QueryableChildren`.`ParentID`

