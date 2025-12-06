-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	WeekDay(Date_Add(`t`.`DateTimeValue`, interval 1 day)) + 1
FROM
	`LinqDataTypes` `t`

