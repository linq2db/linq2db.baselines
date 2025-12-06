-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	(
		SELECT
			MAX(`ch`.`ChildID`)
		FROM
			`Child` `ch`
		WHERE
			`ch`.`ParentID` = `p`.`ParentID` AND `ch`.`ChildID` > 1
	)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` <> 5

