-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`pmp`.`ParentID`
FROM
	`Child` `pmp`
GROUP BY
	`pmp`.`ParentID`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

