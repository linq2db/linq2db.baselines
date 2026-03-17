-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`ParentID`,
	`t`.`ChildID`,
	`i`.`ParentID`,
	`i`.`Value1`
FROM
	`Child` `t`
		LEFT JOIN `Parent` `i` ON `t`.`ParentID` = `i`.`ParentID`

