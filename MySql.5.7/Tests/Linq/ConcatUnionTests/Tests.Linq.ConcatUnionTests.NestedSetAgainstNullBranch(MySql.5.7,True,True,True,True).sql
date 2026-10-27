-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`p`.`ParentID`,
	CAST(NULL AS SIGNED),
	CAST(NULL AS SIGNED),
	CAST(NULL AS SIGNED)
FROM
	`Parent` `p`
UNION
SELECT
	`p_1`.`ParentID`,
	NULL,
	NULL,
	NULL
FROM
	`Parent` `p_1`
UNION
SELECT
	`t1`.`ParentID`,
	`c_1`.`ParentID`,
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Parent` `t1`
		LEFT JOIN `Child` `c_1` ON `c_1`.`ParentID` = `t1`.`ParentID`

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

