BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	(
		SELECT
			Count(*)
		FROM
			`Child` `cp`
				INNER JOIN `GrandChild` `c_1` ON `cp`.`ParentID` = `c_1`.`ParentID` AND `cp`.`ChildID` = `c_1`.`ChildID`
		WHERE
			`p`.`ParentID` = `cp`.`ParentID`
	)
FROM
	`Parent` `p`

