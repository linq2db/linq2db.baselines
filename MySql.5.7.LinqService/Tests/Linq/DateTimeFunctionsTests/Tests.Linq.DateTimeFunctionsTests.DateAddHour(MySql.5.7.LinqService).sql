BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	Extract(hour from Date_Add(`t`.`DateTimeValue`, Interval 1 Hour))
FROM
	`LinqDataTypes` `t`

