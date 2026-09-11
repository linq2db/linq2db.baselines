-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	CAST(TimestampDiff(Microsecond, `t`.`DateTimeValue`, Date_Add(`t`.`DateTimeValue`, Interval 100 Hour)) * 10 AS DECIMAL(29, 10)) / 864000000000
FROM
	`LinqDataTypes` `t`

