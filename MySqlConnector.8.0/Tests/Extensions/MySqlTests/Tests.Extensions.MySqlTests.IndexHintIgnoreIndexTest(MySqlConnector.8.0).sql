BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`ParentID`,
	`p`.`ChildID`
FROM
	`Child` `p` IGNORE INDEX(IX_ChildIndex, IX_ChildIndex2)

