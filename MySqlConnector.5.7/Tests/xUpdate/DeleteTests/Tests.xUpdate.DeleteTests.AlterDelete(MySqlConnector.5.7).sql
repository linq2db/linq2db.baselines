-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE   `t1`
FROM
	`Parent` `t1`
		LEFT JOIN `Child` `ch` ON `t1`.`ParentID` = `ch`.`ParentID`
WHERE
	`ch`.`ParentID` = -1 OR `ch`.`ParentID` IS NULL AND `t1`.`ParentID` = -1

