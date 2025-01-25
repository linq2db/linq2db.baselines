BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	MAX(`g_1`.`ParentID`)
FROM
	`Child` `g_1`
GROUP BY
	`g_1`.`ChildID`

