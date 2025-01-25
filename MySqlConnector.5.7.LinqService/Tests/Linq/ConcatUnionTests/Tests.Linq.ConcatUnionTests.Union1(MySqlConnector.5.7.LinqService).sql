BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`GrandChild` `g_1`
		INNER JOIN `Child` `ch` ON `g_1`.`ChildID` = `ch`.`ChildID`
UNION
SELECT
	`ch_1`.`ParentID`,
	`ch_1`.`ChildID`
FROM
	`Child` `ch_1`
		INNER JOIN `Parent` `p` ON `ch_1`.`ParentID` = `p`.`ParentID`

