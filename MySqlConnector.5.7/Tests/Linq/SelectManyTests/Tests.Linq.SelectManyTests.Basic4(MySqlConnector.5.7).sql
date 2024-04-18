BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`_`.`ParentID` + 1
FROM
	`Parent` `cp`
		INNER JOIN `Child` `_` ON `cp`.`ParentID` = `_`.`ParentID` + 1

