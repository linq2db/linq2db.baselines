-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

UPDATE
	`Parent` `p1`
		INNER JOIN `Parent` `p2` ON `p1`.`ParentID` = `p2`.`ParentID`
SET
	`p1`.`ParentID` = `p2`.`ParentID`
WHERE
	`p1`.`ParentID` < 3

