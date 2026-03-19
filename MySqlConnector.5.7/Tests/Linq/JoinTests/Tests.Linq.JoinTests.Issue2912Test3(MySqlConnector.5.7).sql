-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	(
		SELECT
			`a_Children`.`ChildID`
		FROM
			`Child` `a_Children`
		WHERE
			`t1`.`ParentID` = `a_Children`.`ParentID`
		LIMIT 1
	)
FROM
	`Parent` `t1`
		LEFT JOIN `GrandChild` `names_1` ON `t1`.`ParentID` = `names_1`.`ParentID`

