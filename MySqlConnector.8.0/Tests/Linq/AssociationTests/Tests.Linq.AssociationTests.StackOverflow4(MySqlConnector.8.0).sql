BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	(
		SELECT
			Count(*)
		FROM
			`Parent` `t1`
		WHERE
			`p`.`ParentID` = `t1`.`Value1`
	)
FROM
	`Parent` `p`

