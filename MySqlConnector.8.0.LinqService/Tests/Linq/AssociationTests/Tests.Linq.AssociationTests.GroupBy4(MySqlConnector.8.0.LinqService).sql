BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`g_2`.`Year_1`
FROM
	(
		SELECT
			Extract(year from `g_1`.`DateTimeValue`) as `Year_1`
		FROM
			`LinqDataTypes` `g_1`
	) `g_2`
GROUP BY
	`g_2`.`Year_1`

