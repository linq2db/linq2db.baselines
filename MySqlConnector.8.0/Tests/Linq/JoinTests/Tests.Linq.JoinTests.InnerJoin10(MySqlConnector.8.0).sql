BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`ParentID`,
	`q1`.`GrandChildID`
FROM
	`Parent` `p`
		INNER JOIN `GrandChild` `q1` ON `p`.`ParentID` = `q1`.`ParentID`

