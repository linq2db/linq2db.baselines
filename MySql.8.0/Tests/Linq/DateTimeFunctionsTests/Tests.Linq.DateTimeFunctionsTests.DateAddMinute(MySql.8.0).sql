-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Extract(minute from Date_Add(`t`.`DateTimeValue`, Interval 5 Minute))
FROM
	`LinqDataTypes` `t`

