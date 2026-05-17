-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`t1`.`ParentID`
		FROM
			`Child` `t1`
	) `g_1`
		INNER JOIN `Child` `ch` ON `g_1`.`ParentID` = `ch`.`ParentID`

