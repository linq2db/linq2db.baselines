-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`pmp1`.`ChildID`
FROM
	(
		SELECT
			`g_1`.`ParentID`
		FROM
			`Child` `g_1`
		GROUP BY
			`g_1`.`ParentID`
	) `pmp`
		CROSS JOIN `Child` `pmp1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

