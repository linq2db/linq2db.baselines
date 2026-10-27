-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`p`.`ParentID`,
	CAST(NULL AS SIGNED),
	CAST(NULL AS SIGNED),
	CAST(NULL AS SIGNED)
FROM
	`Parent` `p`
UNION
SELECT
	`t1`.`ParentID`,
	`t1`.`ParentID_1`,
	`t1`.`ParentID_1`,
	`t1`.`ChildID`
FROM
	(
		SELECT
			`p_1`.`ParentID`,
			`p_1`.`ParentID` as `ParentID_1`,
			`p_1`.`ParentID` + 100 as `ChildID`
		FROM
			`Parent` `p_1`
		UNION ALL
		SELECT
			`p_2`.`ParentID`,
			CAST(NULL AS SIGNED) as `ParentID_1`,
			NULL as `ChildID`
		FROM
			`Parent` `p_2`
	) `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

