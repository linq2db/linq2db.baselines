BeforeExecute
-- MySqlConnector MySql

SELECT
	Max(`g_1`.`ParentID`)
FROM
	`Child` `g_1`
GROUP BY
	`g_1`.`ParentID`

