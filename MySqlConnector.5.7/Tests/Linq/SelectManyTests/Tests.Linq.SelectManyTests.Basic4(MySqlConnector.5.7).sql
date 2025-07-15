BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ParentID` + 1
FROM
	`Parent` `p`
		INNER JOIN `Child` `t1` ON `p`.`ParentID` = `t1`.`ParentID` + 1

