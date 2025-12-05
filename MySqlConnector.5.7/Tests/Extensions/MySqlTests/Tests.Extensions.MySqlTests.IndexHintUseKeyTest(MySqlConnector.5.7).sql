-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`ParentID`,
	`p`.`ChildID`
FROM
	`Child` `p` USE KEY(IX_ChildIndex, IX_ChildIndex2)

