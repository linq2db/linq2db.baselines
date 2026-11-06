-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`p`.`ParentID`,
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					`c_1`.`ChildID`
				FROM
					`Child` `c_1`
				WHERE
					`c_1`.`ParentID` = `p`.`ParentID`
			) `t1`
	)
FROM
	`Parent` `p`
ORDER BY
	`p`.`ParentID`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

