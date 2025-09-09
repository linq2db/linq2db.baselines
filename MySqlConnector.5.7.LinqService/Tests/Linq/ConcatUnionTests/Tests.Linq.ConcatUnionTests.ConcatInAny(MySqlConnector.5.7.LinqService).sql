BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	EXISTS(
		SELECT
			`p`.`ParentID`
		FROM
			`Parent` `p`
		UNION ALL
		SELECT
			`p_1`.`ParentID`
		FROM
			`Parent` `p_1`
	) as `c1`

