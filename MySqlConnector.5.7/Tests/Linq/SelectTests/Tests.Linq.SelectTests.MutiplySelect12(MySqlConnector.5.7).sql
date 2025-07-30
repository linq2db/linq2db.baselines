BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`grandChild_1`.`ParentID`,
	`grandChild_1`.`ChildID`,
	`grandChild_1`.`GrandChildID`
FROM
	`GrandChild` `grandChild_1`
		CROSS JOIN `Child` `child_1`
WHERE
	`grandChild_1`.`ChildID` IS NOT NULL

