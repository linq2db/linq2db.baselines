BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`p`.`ParentID`,
	`p`.`ChildID`
FROM
	`Child` `p` IGNORE INDEX(IX_ChildIndex, IX_ChildIndex2)

