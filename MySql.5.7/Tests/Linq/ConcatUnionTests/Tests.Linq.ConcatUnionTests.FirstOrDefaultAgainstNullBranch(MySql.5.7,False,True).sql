-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`p`.`ParentID`,
	CAST(NULL AS SIGNED),
	CAST(NULL AS SIGNED),
	CAST(NULL AS SIGNED)
FROM
	`Parent` `p`
UNION ALL
SELECT
	`t1`.`ParentID`,
	`t1`.`ParentID_1`,
	`t1`.`ParentID_1`,
	`t1`.`ChildID`
FROM
	(
		SELECT
			`p_1`.`ParentID`,
			(
				SELECT
					`c_1`.`ParentID`
				FROM
					`Child` `c_1`
				WHERE
					`c_1`.`ParentID` = `p_1`.`ParentID`
				ORDER BY
					`c_1`.`ChildID`
				LIMIT 1
			) as `ParentID_1`,
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
			) as `ChildID`
		FROM
			`Parent` `p_1`
	) `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

