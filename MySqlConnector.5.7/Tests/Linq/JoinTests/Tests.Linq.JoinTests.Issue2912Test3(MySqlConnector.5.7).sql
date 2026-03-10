-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	(
		SELECT
			`a_Children`.`ChildID`
		FROM
			`Child` `a_Children`
		WHERE
			`employee`.`ParentID` = `a_Children`.`ParentID`
		LIMIT 1
	)
FROM
	`Parent` `employee`
		LEFT JOIN `GrandChild` `names_1` ON `employee`.`ParentID` = `names_1`.`ParentID`

