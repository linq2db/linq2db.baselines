BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	(
		SELECT
			`a_Children`.`ParentID`
		FROM
			`Child` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`ParentID`
		ORDER BY
			`a_Children`.`ChildID`
		LIMIT 1
	),
	(
		SELECT
			`a_Children_1`.`ChildID`
		FROM
			`Child` `a_Children_1`
		WHERE
			`p`.`ParentID` = `a_Children_1`.`ParentID`
		ORDER BY
			`a_Children_1`.`ChildID`
		LIMIT 1
	)
FROM
	`Parent` `p`

