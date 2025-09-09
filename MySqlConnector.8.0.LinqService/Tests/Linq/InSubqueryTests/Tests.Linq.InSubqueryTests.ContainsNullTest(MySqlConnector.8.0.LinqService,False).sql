BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Parent` `c_1`
		WHERE
			`c_1`.`Value1` IS NULL
	) as `c1`

