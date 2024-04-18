BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p_1`.`val`
FROM
	(
		SELECT
			`p`.`ParentID` as `id`,
			1 as `val`
		FROM
			`Parent` `p`
		UNION
		SELECT
			`ch`.`ParentID` as `id`,
			0 as `val`
		FROM
			`Child` `ch`
	) `p_1`

