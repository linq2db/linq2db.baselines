-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`c_1`.`ChildID`,
			`c_1`.`ParentID`
		FROM
			`Child` `c_1`
		WHERE
			`c_1`.`ParentID` < 4
	) `t1`
ORDER BY
	`t1`.`ChildID`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT DISTINCT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` < 4

