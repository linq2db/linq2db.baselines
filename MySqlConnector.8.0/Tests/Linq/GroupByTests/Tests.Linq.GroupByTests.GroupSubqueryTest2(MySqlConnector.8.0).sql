-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`pmp1`.`ChildID`
FROM
	`Child` `pmp1`
		CROSS JOIN (
			SELECT DISTINCT
				`g_1`.`ParentID`
			FROM
				`Child` `g_1`
		) `pmp`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

