-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ChildID`,
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	(
		SELECT DISTINCT
			`c_1`.`ChildID`,
			`a_Parent`.`ParentID`,
			`a_Parent`.`Value1`
		FROM
			`Child` `c_1`
				LEFT JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`
	) `t1`
ORDER BY
	`t1`.`ChildID`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`,
	`a_Parent`.`ParentID`,
	`a_Parent`.`Value1`
FROM
	`Child` `t1`
		LEFT JOIN `Parent` `a_Parent` ON `t1`.`ParentID` = `a_Parent`.`ParentID`

