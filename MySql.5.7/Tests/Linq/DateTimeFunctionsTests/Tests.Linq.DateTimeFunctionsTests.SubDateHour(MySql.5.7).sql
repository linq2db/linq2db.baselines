-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CAST(TimestampDiff(Microsecond, `t`.`DateTimeValue`, Date_Add(`t`.`DateTimeValue`, Interval 100 Hour)) * 10 AS DECIMAL(29, 10)) / 36000000000
FROM
	`LinqDataTypes` `t`

