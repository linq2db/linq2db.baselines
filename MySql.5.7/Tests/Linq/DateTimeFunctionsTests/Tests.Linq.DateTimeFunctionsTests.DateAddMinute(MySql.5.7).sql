BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	Extract(minute from Date_Add(`t`.`DateTimeValue`, Interval 5 Minute))
FROM
	`LinqDataTypes` `t`

