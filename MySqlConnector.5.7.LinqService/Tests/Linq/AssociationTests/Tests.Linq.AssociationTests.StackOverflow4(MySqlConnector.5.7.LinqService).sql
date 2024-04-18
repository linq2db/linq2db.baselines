BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

