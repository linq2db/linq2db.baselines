BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`a_Parent`.`ParentID`,
	`a_Parent`.`Value1`
FROM
	`Child` `_`
		LEFT JOIN `Parent` `a_Parent` ON `_`.`ParentID` = `a_Parent`.`ParentID`

