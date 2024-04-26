BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Parent` `p`
		LEFT JOIN `Child` `ch` ON `p`.`ParentID` = `ch`.`ParentID`

