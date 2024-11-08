BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Parent` `p`
		INNER JOIN `Child` `ch` ON `p`.`ParentID` = `ch`.`ParentID`
WHERE
	`ch`.`ParentID` < 4 OR `ch`.`ParentID` >= 4

