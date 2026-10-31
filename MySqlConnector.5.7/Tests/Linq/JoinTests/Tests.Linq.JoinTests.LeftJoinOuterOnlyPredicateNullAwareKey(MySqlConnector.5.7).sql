-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`p`.`ParentID`,
	`g_1`.`GrandChildID`
FROM
	`Parent` `p`
		LEFT JOIN `GrandChild` `g_1` ON (`p`.`Value1` = `g_1`.`ParentID` OR `p`.`Value1` IS NULL AND `g_1`.`ParentID` IS NULL) AND `p`.`ParentID` <> 2

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`,
	`t1`.`GrandChildID`
FROM
	`GrandChild` `t1`

