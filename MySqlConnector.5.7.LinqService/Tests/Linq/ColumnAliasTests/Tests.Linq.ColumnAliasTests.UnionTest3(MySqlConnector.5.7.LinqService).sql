BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`ParentID`
FROM
	(
		SELECT
			`t1`.`ParentID`,
			`t1`.`Value1`
		FROM
			`Parent` `t1`
		UNION
		SELECT
			`t2`.`ParentID`,
			`t2`.`Value1`
		FROM
			`Parent` `t2`
	) `p`

