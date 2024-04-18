BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`ParentID`,
	`q`.`GrandChildID`
FROM
	`Parent` `p`
		INNER JOIN `GrandChild` `q` ON `p`.`ParentID` = `q`.`ParentID`

