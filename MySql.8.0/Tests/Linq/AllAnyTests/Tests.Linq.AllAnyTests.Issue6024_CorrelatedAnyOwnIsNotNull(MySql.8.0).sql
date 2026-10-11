-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`p`.`ParentID`,
	EXISTS(
		SELECT
			*
		FROM
			`GrandChild` `g_1`
		WHERE
			`g_1`.`ChildID` IS NOT NULL AND `g_1`.`ParentID` = `p`.`ParentID`
	)
FROM
	`Parent` `p`
ORDER BY
	`p`.`ParentID`

