BeforeExecute
-- MySqlConnector MySql

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Parent` `p`
	) as `c1`

