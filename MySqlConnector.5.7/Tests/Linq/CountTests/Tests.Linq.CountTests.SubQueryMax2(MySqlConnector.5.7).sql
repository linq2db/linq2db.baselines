-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	MAX((
		SELECT
			COUNT(*)
		FROM
			`Child` `a_Children`
		WHERE
			`t1`.`ParentID` = `a_Children`.`ParentID`
	))
FROM
	`Parent` `t1`

