-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT DISTINCT
	`p`.`ParentID`
FROM
	`Parent` `p`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Parent` `p_1`
		WHERE
			`p`.`ParentID` = `p_1`.`ParentID` AND (
				SELECT
					`c_1`.`ParentID`
				FROM
					`Child` `c_1`
				WHERE
					`c_1`.`ParentID` = `p_1`.`ParentID`
				ORDER BY
					`c_1`.`ChildID`
				LIMIT 1
			) IS NULL AND
			(
				SELECT
					`c_2`.`ChildID`
				FROM
					`Child` `c_2`
				WHERE
					`c_2`.`ParentID` = `p_1`.`ParentID`
				ORDER BY
					`c_2`.`ChildID`
				LIMIT 1
			) IS NULL
	)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

