BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`ParentID`,
	`t`.`Value1`
FROM
	`Parent` `t`
		INNER JOIN `Child` `g_1` ON `t`.`ParentID` = `g_1`.`ParentID`
WHERE
	Abs(`g_1`.`ChildID`) > 3
ORDER BY
	`g_1`.`ParentID`

