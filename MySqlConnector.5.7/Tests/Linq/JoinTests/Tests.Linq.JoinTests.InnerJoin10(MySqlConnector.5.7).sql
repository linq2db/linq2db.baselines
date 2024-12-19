BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`ParentID`,
	`q1`.`GrandChildID`
FROM
	`Parent` `p`
		INNER JOIN `GrandChild` `q1` ON `p`.`ParentID` = `q1`.`ParentID`

