-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Coalesce((
		SELECT
			MAX(`a_Children`.`ChildID`)
		FROM
			`Child` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`ParentID`
	), `p`.`Value1`)
FROM
	`Parent` `p`

