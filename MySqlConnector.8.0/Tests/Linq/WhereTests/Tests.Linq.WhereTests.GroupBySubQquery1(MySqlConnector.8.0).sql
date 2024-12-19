BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`ParentID`,
	`x`.`ChildID`
FROM
	`Child` `x`
WHERE
	EXISTS(
		SELECT
			MAX(`y`.`ChildID`)
		FROM
			`Child` `y`
		GROUP BY
			`y`.`ParentID`
		HAVING
			MAX(`y`.`ChildID`) = `x`.`ChildID`
	)

