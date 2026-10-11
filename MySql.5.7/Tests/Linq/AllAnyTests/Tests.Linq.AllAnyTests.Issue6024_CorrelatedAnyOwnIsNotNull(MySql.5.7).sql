-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

