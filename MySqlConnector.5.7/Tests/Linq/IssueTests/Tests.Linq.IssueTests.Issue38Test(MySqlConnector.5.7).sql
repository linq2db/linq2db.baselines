BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`GrandChild` `a_GrandChildren1`
		WHERE
			`a`.`ParentID` = `a_GrandChildren1`.`ParentID` AND
			`a`.`ChildID` = `a_GrandChildren1`.`ChildID`
	)
FROM
	`Child` `a`

