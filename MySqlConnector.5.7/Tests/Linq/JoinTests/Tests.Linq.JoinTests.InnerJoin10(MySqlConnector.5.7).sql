BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ParentID`,
	`q1`.`GrandChildID`
FROM
	`Parent` `t1`
		INNER JOIN `GrandChild` `q1` ON `t1`.`ParentID` = `q1`.`ParentID`

