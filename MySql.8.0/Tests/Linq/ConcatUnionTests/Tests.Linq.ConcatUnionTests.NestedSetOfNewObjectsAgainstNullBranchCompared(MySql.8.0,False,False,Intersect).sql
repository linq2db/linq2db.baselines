-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`ParentID`,
	`t1`.`ParentID_1`,
	`t1`.`ParentID_1`,
	`t1`.`ChildID`
FROM
	(
		SELECT
			`p`.`ParentID`,
			`p`.`ParentID` as `ParentID_1`,
			`p`.`ParentID` + 100 as `ChildID`
		FROM
			`Parent` `p`
		UNION ALL
		SELECT
			`p_1`.`ParentID`,
			CAST(NULL AS SIGNED) as `ParentID_1`,
			NULL as `ChildID`
		FROM
			`Parent` `p_1`
	) `t1`
INTERSECT
SELECT
	`p_2`.`ParentID`,
	CAST(NULL AS SIGNED),
	CAST(NULL AS SIGNED),
	CAST(NULL AS SIGNED)
FROM
	`Parent` `p_2`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

