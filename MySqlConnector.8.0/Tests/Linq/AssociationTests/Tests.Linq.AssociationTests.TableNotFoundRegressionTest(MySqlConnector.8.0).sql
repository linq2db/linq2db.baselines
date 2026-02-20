-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`GrandChild` `r`
				LEFT JOIN `Child` `a_Child` ON `r`.`ParentID` = `a_Child`.`ParentID` AND `r`.`ChildID` = `a_Child`.`ChildID`
				LEFT JOIN `Parent` `a_Parent` ON `a_Child`.`ParentID` = `a_Parent`.`ParentID`
		WHERE
			`a_Parent`.`ParentID` = 1
	) as `c1`

