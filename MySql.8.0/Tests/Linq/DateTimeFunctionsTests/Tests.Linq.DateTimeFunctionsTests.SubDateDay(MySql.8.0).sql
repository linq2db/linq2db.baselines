-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CAST(TIMESTAMPDIFF(day, `t`.`DateTimeValue`, Date_Add(`t`.`DateTimeValue`, Interval 100 Hour)) AS DOUBLE)
FROM
	`LinqDataTypes` `t`

