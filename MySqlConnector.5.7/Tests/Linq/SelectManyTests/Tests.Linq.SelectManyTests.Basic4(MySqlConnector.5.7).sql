BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`_`.`ParentID` + 1
FROM
	`Parent` `p`
		INNER JOIN `Child` `_` ON `p`.`ParentID` = `_`.`ParentID` + 1

