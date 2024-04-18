BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`,
	`t1`.`GrandChildID`
FROM
	`Parent` `cp`,
	(
		SELECT
			`c_1`.`ParentID`,
			`c_1`.`ChildID`,
			`c_1`.`GrandChildID`
		FROM
			`Child` `cp_1`,
			`GrandChild` `c_1`
	) `t1`

