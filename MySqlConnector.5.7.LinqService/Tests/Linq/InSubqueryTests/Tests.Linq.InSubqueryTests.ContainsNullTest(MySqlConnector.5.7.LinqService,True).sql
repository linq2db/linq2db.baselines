BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Parent` `c_1`
		WHERE
			`c_1`.`Value1` IS NULL
	) as `c1`

