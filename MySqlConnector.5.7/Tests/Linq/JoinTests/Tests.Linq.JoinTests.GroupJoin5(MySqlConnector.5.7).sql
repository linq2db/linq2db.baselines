BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	(
		SELECT
			`ch`.`ParentID`
		FROM
			`Child` `ch`
		WHERE
			`p`.`ParentID` = `ch`.`ParentID`
		ORDER BY
			`ch`.`ChildID`
		LIMIT 1
	),
	(
		SELECT
			`ch_1`.`ChildID`
		FROM
			`Child` `ch_1`
		WHERE
			`p`.`ParentID` = `ch_1`.`ParentID`
		ORDER BY
			`ch_1`.`ChildID`
		LIMIT 1
	)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` >= 1
ORDER BY
	`p`.`ParentID`

