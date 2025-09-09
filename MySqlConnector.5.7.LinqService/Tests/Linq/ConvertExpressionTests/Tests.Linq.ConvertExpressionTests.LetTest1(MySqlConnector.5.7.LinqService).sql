BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	(
		SELECT
			`a_Children`.`ParentID`
		FROM
			`Child` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`ParentID`
		LIMIT 1
	)
FROM
	`Parent` `p`
WHERE
	(
		SELECT
			`a_Children`.`ParentID`
		FROM
			`Child` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`ParentID`
		LIMIT 1
	) IS NOT NULL

