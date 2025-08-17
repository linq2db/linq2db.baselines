BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`g_2`.`Key_1`
FROM
	(
		SELECT
			Extract(year from `g_1`.`DateTimeValue`) as `Key_1`
		FROM
			`LinqDataTypes` `g_1`
	) `g_2`
GROUP BY
	`g_2`.`Key_1`

