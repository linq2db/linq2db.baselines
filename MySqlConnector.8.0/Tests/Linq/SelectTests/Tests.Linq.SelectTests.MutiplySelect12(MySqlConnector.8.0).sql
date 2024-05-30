BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`grandChild_1`.`ParentID`,
	`grandChild_1`.`ChildID`,
	`grandChild_1`.`GrandChildID`
FROM
	`GrandChild` `grandChild_1`
		CROSS JOIN `Child` `child_1`
WHERE
	`grandChild_1`.`ChildID` IS NOT NULL

