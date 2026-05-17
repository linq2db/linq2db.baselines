-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	(
		SELECT
			MIN(`a_Children`.`ParentID`)
		FROM
			`Child` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`ParentID` AND `a_Children`.`ParentID` < 0
	)
FROM
	`Parent` `p`

