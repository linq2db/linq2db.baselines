BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Key_1`
FROM
	(
		SELECT
			Extract(year from `selectParam`.`DateTimeValue`) as `Key_1`
		FROM
			`LinqDataTypes` `selectParam`
	) `t1`
GROUP BY
	`t1`.`Key_1`

