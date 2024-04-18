BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`ParentID`,
	`q`.`GrandChildID`
FROM
	`Parent` `p`
		INNER JOIN `GrandChild` `q` ON `p`.`ParentID` = `q`.`ParentID`

