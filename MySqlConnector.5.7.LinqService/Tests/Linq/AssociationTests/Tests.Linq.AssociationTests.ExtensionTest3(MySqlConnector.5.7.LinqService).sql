BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`a_Parent`.`ParentID`
FROM
	`Child` `t1`
		LEFT JOIN `Parent` `a_Parent` ON `t1`.`ParentID` = `a_Parent`.`ParentID`

