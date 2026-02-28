-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	CAST(TIMESTAMPDIFF(hour, `t`.`DateTimeValue`, Date_Add(`t`.`DateTimeValue`, Interval 100 Hour)) AS DOUBLE)
FROM
	`LinqDataTypes` `t`

