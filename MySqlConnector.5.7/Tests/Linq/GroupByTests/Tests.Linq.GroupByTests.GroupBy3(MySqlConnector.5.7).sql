-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT DISTINCT
	Coalesce(`gr`.`Value1`, `c_1`.`ChildID`)
FROM
	`Parent` `gr`
		INNER JOIN `Child` `c_1` ON `gr`.`ParentID` = `c_1`.`ParentID`

