BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`g_1`.`ParentID`,
	COUNT(*)
FROM
	`Child` `g_1`
		INNER JOIN `GrandChild` `y` ON `g_1`.`ParentID` = `y`.`ParentID` AND `y`.`ParentID` IS NOT NULL AND `g_1`.`ChildID` = `y`.`ChildID` AND `y`.`ChildID` IS NOT NULL
GROUP BY
	`g_1`.`ParentID`

