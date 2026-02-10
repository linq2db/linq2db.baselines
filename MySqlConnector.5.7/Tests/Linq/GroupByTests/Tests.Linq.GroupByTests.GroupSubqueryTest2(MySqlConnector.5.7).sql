-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

