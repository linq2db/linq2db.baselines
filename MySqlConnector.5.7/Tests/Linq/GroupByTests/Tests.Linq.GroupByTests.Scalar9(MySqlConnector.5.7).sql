BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	(
		SELECT
			Count(*)
		FROM
			`Child` `id`
		WHERE
			`t1`.`ParentID` = `id`.`ParentID` AND `id`.`ChildID` < 30
	)
FROM
	`Child` `t1`
GROUP BY
	`t1`.`ParentID`

