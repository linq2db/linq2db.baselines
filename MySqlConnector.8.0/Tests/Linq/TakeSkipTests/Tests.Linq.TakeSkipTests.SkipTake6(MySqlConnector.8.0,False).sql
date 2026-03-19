-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`,
	(
		SELECT
			`p`.`ParentID`
		FROM
			`GrandChild` `p`
		LIMIT 3
	) `p_1`
WHERE
	`t1`.`ParentID` = `p_1`.`ParentID`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`,
	(
		SELECT
			`p`.`ParentID`
		FROM
			`GrandChild` `p`
		LIMIT 12, 3
	) `p_1`
WHERE
	`t1`.`ParentID` = `p_1`.`ParentID`

