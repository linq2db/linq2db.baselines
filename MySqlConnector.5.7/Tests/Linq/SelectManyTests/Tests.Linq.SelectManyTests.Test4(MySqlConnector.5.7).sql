BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Count(*)
FROM
	`Parent` `p`
		INNER JOIN `GrandChild` `g_1` ON `p`.`ParentID` = `g_1`.`ParentID`
		INNER JOIN `Child` `c_1` ON `g_1`.`ChildID` = `c_1`.`ChildID`
		INNER JOIN `LinqDataTypes` `t` ON `c_1`.`ParentID` = `t`.`ID`

