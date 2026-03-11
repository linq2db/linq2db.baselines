-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	CAST(TIMESTAMPDIFF(day, `t`.`DateTimeValue`, Date_Add(`t`.`DateTimeValue`, Interval 100 Hour)) AS DECIMAL(29, 10))
FROM
	`LinqDataTypes` `t`

