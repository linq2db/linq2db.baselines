-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`
		LEFT JOIN `Child` `c_1` ON `c_1`.`ParentID` = `p`.`ParentID`
WHERE
	`c_1`.`ChildID` DIV 2 <> 10 OR `c_1`.`ChildID` IS NULL

