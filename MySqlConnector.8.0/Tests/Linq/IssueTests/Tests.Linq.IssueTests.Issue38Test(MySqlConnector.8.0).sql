BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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

