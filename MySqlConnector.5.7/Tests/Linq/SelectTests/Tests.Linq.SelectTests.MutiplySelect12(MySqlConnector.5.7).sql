-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`,
	`t1`.`GrandChildID`
FROM
	`GrandChild` `t1`
		CROSS JOIN `Child` `child_1`
WHERE
	`t1`.`ChildID` IS NOT NULL

