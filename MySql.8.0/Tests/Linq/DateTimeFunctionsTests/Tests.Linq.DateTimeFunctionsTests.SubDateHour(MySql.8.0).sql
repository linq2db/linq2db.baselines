-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CAST(CAST(TIMESTAMPDIFF(MICROSECOND, `t`.`DateTimeValue`, Date_Add(`t`.`DateTimeValue`, Interval 100 Hour)) * 10 AS SIGNED) AS DOUBLE) / 36000000000
FROM
	`LinqDataTypes` `t`

