-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT DISTINCT
					`g_1`.`ParentID` as `Key_1`
				FROM
					`Child` `g_1`
			) `t1`
		WHERE
			`p`.`ParentID` = `t1`.`Key_1`
	)
ORDER BY
	`p`.`ParentID`

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

