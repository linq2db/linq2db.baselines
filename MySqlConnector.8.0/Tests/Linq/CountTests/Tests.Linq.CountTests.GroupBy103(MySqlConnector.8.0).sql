BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	(
		SELECT
			Count(*)
		FROM
			`Child` `ch`
		WHERE
			`t1`.`ParentID` = `ch`.`ParentID` AND `t1`.`ChildID` = `ch`.`ChildID` AND
			`ch`.`ChildID` > 20
	)
FROM
	`Child` `t1`
GROUP BY
	`t1`.`ParentID`,
	`t1`.`ChildID`

