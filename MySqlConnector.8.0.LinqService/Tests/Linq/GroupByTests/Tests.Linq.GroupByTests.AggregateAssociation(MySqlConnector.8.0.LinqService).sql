BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	SUM(Coalesce(`a_Parent`.`Value1`, 0))
FROM
	`Child` `grp`
		LEFT JOIN `Parent` `a_Parent` ON `grp`.`ParentID` = `a_Parent`.`ParentID`
GROUP BY
	`grp`.`ParentID`

