-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					`p`.`ParentID`,
					`p`.`Value1` as `Value_1`
				FROM
					`Parent` `p`
				LIMIT 100
			) `param`
		WHERE
			`param`.`ParentID` = `c_1`.`ParentID` AND `param`.`Value_1` = `c_1`.`ParentID`
	)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

