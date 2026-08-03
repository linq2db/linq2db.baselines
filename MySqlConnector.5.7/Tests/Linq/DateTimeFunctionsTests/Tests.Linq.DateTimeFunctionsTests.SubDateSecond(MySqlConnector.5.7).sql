-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	CAST(CAST(TIMESTAMPDIFF(MICROSECOND, `t`.`DateTimeValue`, Date_Add(`t`.`DateTimeValue`, Interval 100 Minute)) * 10 AS SIGNED) AS DECIMAL(29, 10)) / 10000000
FROM
	`LinqDataTypes` `t`

