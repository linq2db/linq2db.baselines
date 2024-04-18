BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`g_1`.`ParentID`
FROM
	`Child` `c_1`
		LEFT JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`
		INNER JOIN `Child` `g_1` ON `a_Parent`.`ParentID` = `g_1`.`ParentID`
GROUP BY
	`g_1`.`ParentID`

