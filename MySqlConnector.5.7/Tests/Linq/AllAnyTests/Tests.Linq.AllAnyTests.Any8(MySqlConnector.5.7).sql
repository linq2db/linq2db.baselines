-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Child` `c_1`
				LEFT JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`
		WHERE
			`a_Parent`.`ParentID` = `p`.`ParentID` AND (`a_Parent`.`Value1` = `p`.`Value1` OR `a_Parent`.`Value1` IS NULL AND `p`.`Value1` IS NULL)
	)
FROM
	`Parent` `p`

