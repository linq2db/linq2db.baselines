-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`,
	(
		SELECT
			`y1`.`ParentID`
		FROM
			`Child` `y1`
		WHERE
			`t1`.`ParentID` = `y1`.`ParentID` AND `t1`.`Value1` = `y1`.`ParentID`
		LIMIT 1
	),
	(
		SELECT
			`y1_1`.`ChildID`
		FROM
			`Child` `y1_1`
		WHERE
			`t1`.`ParentID` = `y1_1`.`ParentID` AND `t1`.`Value1` = `y1_1`.`ParentID`
		LIMIT 1
	)
FROM
	`Parent` `t1`
		LEFT JOIN `Child` `y4` ON `t1`.`ParentID` = `y4`.`ParentID` AND `t1`.`Value1` = `y4`.`ParentID`
WHERE
	`t1`.`ParentID` = 1 AND `t1`.`Value1` IS NOT NULL
ORDER BY
	`t1`.`ParentID`

