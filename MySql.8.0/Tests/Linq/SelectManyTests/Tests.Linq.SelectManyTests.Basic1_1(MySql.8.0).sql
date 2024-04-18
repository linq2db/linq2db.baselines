BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

