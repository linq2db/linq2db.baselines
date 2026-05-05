-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Coalesce((
		SELECT
			Coalesce(SUM(`a_Children`.`ParentID` * `a_Children`.`ChildID`), 0)
		FROM
			`Child` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`ParentID` AND `a_Children`.`ParentID` > 2
	), 0)
FROM
	`Parent` `p`

