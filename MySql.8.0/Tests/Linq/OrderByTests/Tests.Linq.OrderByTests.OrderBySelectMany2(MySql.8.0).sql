BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Parent` `p`,
	`Child` `c_1`
WHERE
	`p`.`ParentID` = (
		SELECT
			`a_Parent1`.`ParentID`
		FROM
			`Parent` `a_Parent1`
		WHERE
			`c_1`.`ParentID` = `a_Parent1`.`ParentID`
	)
ORDER BY
	`p`.`ParentID`,
	`c_1`.`ChildID`

