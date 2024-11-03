BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	(
		SELECT
			`a_Children`.`ParentID`
		FROM
			`Child` `a_Children`
		WHERE
			`a_Parent`.`ParentID` = `a_Children`.`ParentID`
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
			`a_Parent`.`ParentID` = `a_Children_1`.`ParentID`
		ORDER BY
			`a_Children_1`.`ChildID`
		LIMIT 1
	)
FROM
	`GrandChild` `p`
		LEFT JOIN `Child` `a_Child` ON `p`.`ParentID` = `a_Child`.`ParentID` AND `p`.`ChildID` = `a_Child`.`ChildID`
		LEFT JOIN `Parent` `a_Parent` ON `a_Child`.`ParentID` = `a_Parent`.`ParentID`
WHERE
	`p`.`ChildID` > 0

