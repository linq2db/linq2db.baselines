BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`ParentID`,
	`t`.`ChildID`,
	`gr`.`ParentID`,
	`gr`.`Value1`
FROM
	`Child` `t`
		LEFT JOIN `Parent` `gr` ON `t`.`ParentID` = `gr`.`ParentID`

