-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t2`.`ParentID`,
	`t2`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`t1`.`ParentID`,
			`t1`.`ChildID`
		FROM
			`Child` `t1`
	) `t2`
		LEFT JOIN `Parent` `a_Parent` ON `t2`.`ParentID` = `a_Parent`.`ParentID`
ORDER BY
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `a_Children`
		WHERE
			`a_Parent`.`ParentID` = `a_Children`.`ParentID`
	)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

