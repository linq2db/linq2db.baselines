-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`
		INNER JOIN `Child` `g_1` ON `t1`.`ParentID` = `g_1`.`ParentID`
WHERE
	Abs(`g_1`.`ChildID`) > 3
ORDER BY
	`g_1`.`ParentID`

