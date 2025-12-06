-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	TIMESTAMPDIFF(second, `t`.`DateTimeValue`, Date_Add(`t`.`DateTimeValue`, Interval 100 Minute))
FROM
	`LinqDataTypes` `t`

