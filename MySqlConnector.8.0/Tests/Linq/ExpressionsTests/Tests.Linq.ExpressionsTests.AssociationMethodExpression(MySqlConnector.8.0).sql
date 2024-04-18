BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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

