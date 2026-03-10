-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT DISTINCT
	`g_1`.`ParentID`
FROM
	`GrandChild` `g_1`
GROUP BY
	`g_1`.`ParentID`,
	`g_1`.`ChildID`

