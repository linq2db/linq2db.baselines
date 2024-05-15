BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	(
		SELECT
			`c_1`.`ParentID`
		FROM
			`Child` `c_1`
		WHERE
			`t1`.`ParentID` = `c_1`.`ParentID`
		ORDER BY
			`c_1`.`ChildID`
		LIMIT 1
	),
	(
		SELECT
			`c_2`.`ChildID`
		FROM
			`Child` `c_2`
		WHERE
			`t1`.`ParentID` = `c_2`.`ParentID`
		ORDER BY
			`c_2`.`ChildID`
		LIMIT 1
	)
FROM
	`Parent` `t1`

