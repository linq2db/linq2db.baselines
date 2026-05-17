-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p_1`.`val`
FROM
	(
		SELECT
			`p`.`ParentID` as `id`,
			CAST(1 AS SIGNED) as `val`
		FROM
			`Parent` `p`
		UNION
		SELECT
			`ch`.`ParentID` as `id`,
			CAST(0 AS SIGNED) as `val`
		FROM
			`Child` `ch`
	) `p_1`

