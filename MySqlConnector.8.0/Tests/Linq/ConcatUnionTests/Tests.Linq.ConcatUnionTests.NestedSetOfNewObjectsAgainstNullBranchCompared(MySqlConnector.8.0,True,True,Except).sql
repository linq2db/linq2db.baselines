-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`ParentID`,
	`t1`.`Child`,
	`t1`.`Child`,
	`t1`.`ChildID`
FROM
	(
		SELECT
			`p`.`ParentID`,
			CAST(NULL AS SIGNED) as `Child`,
			CAST(NULL AS SIGNED) as `ChildID`
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
EXCEPT
SELECT
	`p_2`.`ParentID`,
	CAST(NULL AS SIGNED),
	CAST(NULL AS SIGNED),
	NULL
FROM
	`Parent` `p_2`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

