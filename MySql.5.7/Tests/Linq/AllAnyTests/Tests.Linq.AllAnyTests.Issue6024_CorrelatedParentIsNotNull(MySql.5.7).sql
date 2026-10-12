-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`p`.`ParentID`,
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `c_1`
		WHERE
			`c_1`.`ParentID` = `p`.`ParentID` AND `p`.`Value1` IS NOT NULL
	)
FROM
	`Parent` `p`
ORDER BY
	`p`.`ParentID`

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

