-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	TIMESTAMPDIFF(day, `t`.`DateTimeValue`, Date_Add(`t`.`DateTimeValue`, Interval 100 Hour))
FROM
	`LinqDataTypes` `t`

