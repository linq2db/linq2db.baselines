-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`ParentID`,
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `a_Children`
		WHERE
			`t`.`ParentID` = `a_Children`.`ParentID`
	)
FROM
	`Parent` `t`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`ParentID`,
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `a_Children`
		WHERE
			`t`.`ParentID` = `a_Children`.`ParentID`
	)
FROM
	`Parent` `t`

