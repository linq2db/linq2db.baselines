BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	WeekDay(Date_Add(`t`.`DateTimeValue`, interval 1 day)) + 1
FROM
	`LinqDataTypes` `t`

