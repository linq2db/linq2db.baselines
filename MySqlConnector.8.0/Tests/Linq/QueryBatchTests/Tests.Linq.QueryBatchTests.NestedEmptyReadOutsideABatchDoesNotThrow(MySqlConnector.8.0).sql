-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	(
		SELECT
			`i`.`Id`
		FROM
			`BatchItem` `i`
		WHERE
			`i`.`GroupId` = `g_1`.`Id` AND `i`.`Id` > 8
		LIMIT 1
	)
FROM
	`BatchGroup` `g_1`
ORDER BY
	`g_1`.`Id`

