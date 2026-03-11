-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`pmp1`.`ChildID`
FROM
	`Child` `pmp1`
		CROSS JOIN (
			SELECT DISTINCT
				`pmp`.`ParentID`
			FROM
				`Child` `pmp`
		) `pmp_1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

