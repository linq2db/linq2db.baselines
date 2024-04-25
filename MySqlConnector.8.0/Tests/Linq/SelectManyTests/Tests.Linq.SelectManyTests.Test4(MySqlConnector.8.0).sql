BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Count(*)
FROM
	`Parent` `p`
		INNER JOIN `GrandChild` `g_1` ON `p`.`ParentID` = `g_1`.`ParentID`
		INNER JOIN `Child` `c_1` ON `g_1`.`ChildID` = `c_1`.`ChildID`
		INNER JOIN `LinqDataTypes` `t` ON `c_1`.`ParentID` = `t`.`ID`

