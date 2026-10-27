-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT DISTINCT
	`t1`.`ParentID`,
	`t1`.`Child`,
	`t1`.`ChildID`
FROM
	(
		SELECT
			`p`.`ParentID`,
			CAST(NULL AS SIGNED) as `Child`,
			NULL as `ChildID`
		FROM
			`Parent` `p`
		UNION
		SELECT
			`p_1`.`ParentID`,
			`p_1`.`ParentID` as `Child`,
			`p_1`.`ParentID` + 100 as `ChildID`
		FROM
			`Parent` `p_1`
	) `t1`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Parent` `p_2`
		WHERE
			`t1`.`ParentID` = `p_2`.`ParentID` AND `t1`.`Child` IS NULL AND
			`t1`.`ChildID` IS NULL
	)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

