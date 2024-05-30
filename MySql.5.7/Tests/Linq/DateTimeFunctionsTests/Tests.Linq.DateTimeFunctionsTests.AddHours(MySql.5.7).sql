BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	Extract(hour from Date_Add(`t`.`DateTimeValue`, Interval 22 Hour))
FROM
	`LinqDataTypes` `t`

