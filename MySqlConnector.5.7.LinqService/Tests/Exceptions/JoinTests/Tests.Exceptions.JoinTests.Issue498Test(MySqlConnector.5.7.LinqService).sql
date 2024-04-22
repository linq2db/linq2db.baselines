BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x`.`ParentID`
FROM
	`Parent` `x`
		INNER JOIN `Child` `y` ON `x`.`ParentID` = `y`.`ParentID`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`g_1`.`ParentID`
FROM
	`Parent` `g_1`
		INNER JOIN `Child` `y` ON `g_1`.`ParentID` = `y`.`ParentID`
GROUP BY
	`g_1`.`ParentID`

