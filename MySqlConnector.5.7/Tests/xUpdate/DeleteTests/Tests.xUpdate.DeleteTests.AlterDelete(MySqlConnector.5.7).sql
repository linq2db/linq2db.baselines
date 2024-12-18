BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE   `p`
FROM
	`Parent` `p`
		LEFT JOIN `Child` `ch` ON `p`.`ParentID` = `ch`.`ParentID`
WHERE
	`ch`.`ParentID` IS NOT NULL AND `ch`.`ParentID` = -1 AND `ch`.`ParentID` IS NOT NULL OR
	`ch`.`ParentID` IS NULL AND `p`.`ParentID` = -1

