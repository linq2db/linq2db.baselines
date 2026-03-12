-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`g_2`.`ChildId`,
	`g_2`.`ParentId`,
	COUNT(*)
FROM
	(
		SELECT
			1 as `ChildId`,
			2 as `ParentId`
		FROM
			`Child` `g_1`
	) `g_2`
GROUP BY
	`g_2`.`ChildId`,
	`g_2`.`ParentId`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

