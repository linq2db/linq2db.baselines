-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`,
	(
		SELECT
			COUNT(*)
		FROM
			`Parent` `p`
		WHERE
			`t1`.`ParentID` = `p`.`ParentID`
	)
FROM
	`Child` `t1`
ORDER BY
	`t1`.`ParentID`,
	`t1`.`ChildID` DESC

