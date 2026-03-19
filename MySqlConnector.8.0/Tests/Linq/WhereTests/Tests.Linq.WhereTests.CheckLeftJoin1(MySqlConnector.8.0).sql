-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`
		LEFT JOIN `Child` `ch` ON `t1`.`ParentID` = `ch`.`ParentID`
WHERE
	`ch`.`ParentID` IS NULL

