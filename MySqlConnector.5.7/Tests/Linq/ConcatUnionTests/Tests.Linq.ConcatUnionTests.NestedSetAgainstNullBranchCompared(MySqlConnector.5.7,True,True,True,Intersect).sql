-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT DISTINCT
	`t2`.`ParentID`,
	`t2`.`Child`,
	`t2`.`ParentID_1`,
	`t2`.`ChildID`
FROM
	(
		SELECT
			`p`.`ParentID`,
			CAST(NULL AS SIGNED) as `Child`,
			CAST(NULL AS SIGNED) as `ParentID_1`,
			CAST(NULL AS SIGNED) as `ChildID`
		FROM
			`Parent` `p`
		UNION
		SELECT
			`t1`.`ParentID`,
			`c_1`.`ParentID` as `Child`,
			`c_1`.`ParentID` as `ParentID_1`,
			`c_1`.`ChildID`
		FROM
			`Parent` `t1`
				LEFT JOIN `Child` `c_1` ON `c_1`.`ParentID` = `t1`.`ParentID`
	) `t2`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Parent` `p_1`
		WHERE
			`t2`.`ParentID` = `p_1`.`ParentID` AND
			`t2`.`Child` IS NULL AND
			`t2`.`ParentID_1` IS NULL AND
			`t2`.`ChildID` IS NULL
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

