BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p_1`.`c1`
FROM
	(
		SELECT
			`p`.`ParentID`,
			NULL as `c1`
		FROM
			`Parent` `p`
		UNION
		SELECT
			`p2`.`ParentID`,
			`p2`.`Value1` as `c1`
		FROM
			`Parent` `p2`
	) `p_1`

