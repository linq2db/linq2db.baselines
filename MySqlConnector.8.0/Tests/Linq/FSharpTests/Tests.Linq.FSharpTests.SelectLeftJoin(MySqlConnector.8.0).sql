-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
		INNER JOIN `Parent` `arg2` ON `t1`.`ParentID` = `arg2`.`ParentID`
WHERE
	`arg2`.`Value1` = 6
LIMIT 1

