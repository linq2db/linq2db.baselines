-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	CAST(TIMESTAMPDIFF(minute, `t`.`DateTimeValue`, Date_Add(`t`.`DateTimeValue`, Interval 100 Minute)) AS DECIMAL(29, 10))
FROM
	`LinqDataTypes` `t`

