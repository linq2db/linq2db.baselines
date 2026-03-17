-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`pmp1`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`g_1`.`ParentID`
		FROM
			`Child` `g_1`
	) `pmp`
		CROSS JOIN `Child` `pmp1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

