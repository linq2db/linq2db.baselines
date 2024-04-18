BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`c_1`.`ChildID`,
	`c_1`.`ParentID`
FROM
	`Parent` `_`
		INNER JOIN `Child` `c_1` ON `_`.`ParentID` = `c_1`.`ParentID`
WHERE
	`_`.`ParentID` = 1

