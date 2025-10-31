-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Coalesce((
		SELECT
			`a_Parent`.`Value1`
		FROM
			`Child` `ch`
				LEFT JOIN `Parent` `a_Parent` ON `ch`.`ParentID` = `a_Parent`.`ParentID`
		WHERE
			`ch`.`ChildID` = `c_1`.`ChildID`
		LIMIT 1
	), `c_1`.`ChildID`)
FROM
	`Child` `c_1`

