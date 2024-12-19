BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	(
		SELECT
			`t1`.`ParentID`
		FROM
			`Child` `t1`
		GROUP BY
			`t1`.`ParentID`
	) `g_1`
		INNER JOIN `Child` `ch` ON `g_1`.`ParentID` = `ch`.`ParentID`

