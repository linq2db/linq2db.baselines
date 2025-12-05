-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`c_1`.`ChildID`
FROM
	`Parent` `gg`
		LEFT JOIN `Child` `c_1` ON `gg`.`ParentID` = `c_1`.`ParentID` AND `c_1`.`ParentID` = 1
GROUP BY
	`c_1`.`ChildID`

