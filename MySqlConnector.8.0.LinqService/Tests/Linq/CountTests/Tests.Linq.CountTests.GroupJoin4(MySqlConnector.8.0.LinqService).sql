BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	(
		SELECT
			Count(*)
		FROM
			`Child` `t1`
		WHERE
			`p`.`ParentID` = `t1`.`ParentID`
	),
	(
		SELECT
			Count(*)
		FROM
			`Child` `t2`
		WHERE
			`p`.`ParentID` = `t2`.`ParentID`
	)
FROM
	`Parent` `p`

