BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`p`.`ParentID`,
	`p`.`ChildID`
FROM
	`Child` `p` USE INDEX(IX_ChildIndex, IX_ChildIndex2)

