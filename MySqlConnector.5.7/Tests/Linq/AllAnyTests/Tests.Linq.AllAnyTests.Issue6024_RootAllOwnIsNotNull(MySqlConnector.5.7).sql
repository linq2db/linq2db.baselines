-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			`Parent` `p`
		WHERE
			`p`.`Value1` IS NOT NULL AND `p`.`Value1` <= 0
	) as `c1`

