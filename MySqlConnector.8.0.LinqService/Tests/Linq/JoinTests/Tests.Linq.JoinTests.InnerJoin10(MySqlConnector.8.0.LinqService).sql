BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`q1`.`GrandChildID`
FROM
	`Parent` `t1`
		INNER JOIN `GrandChild` `q1` ON `t1`.`ParentID` = `q1`.`ParentID`

