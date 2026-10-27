-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`ParentID`,
	`c_1`.`ParentID`,
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Parent` `t1`
		LEFT JOIN `Child` `c_1` ON `c_1`.`ParentID` = `t1`.`ParentID`
UNION
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
	CAST(NULL AS SIGNED),
	CAST(NULL AS SIGNED),
	CAST(NULL AS SIGNED)
FROM
	`Parent` `p_1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

