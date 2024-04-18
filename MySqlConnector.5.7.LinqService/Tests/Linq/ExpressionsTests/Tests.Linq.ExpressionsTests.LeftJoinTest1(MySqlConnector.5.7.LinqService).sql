BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`ParentID`,
	`t`.`ChildID`,
	`gr`.`ParentID`,
	`gr`.`Value1`
FROM
	`Child` `t`
		LEFT JOIN `Parent` `gr` ON `t`.`ParentID` = `gr`.`ParentID`

