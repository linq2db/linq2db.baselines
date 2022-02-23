BeforeExecute
-- MySqlConnector MySql

SELECT
	Coalesce((
		SELECT
			Max(`c_1`.`ChildID`)
		FROM
			`Child` `c_1`
		WHERE
			`p`.`ParentID` = `c_1`.`ParentID`
	), `p`.`Value1`)
FROM
	`Parent` `p`

