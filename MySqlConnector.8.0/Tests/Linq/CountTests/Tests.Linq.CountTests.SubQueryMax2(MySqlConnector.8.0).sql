BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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

