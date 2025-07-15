BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	WeekDay(Date_Add(`t`.`DateTimeValue`, interval 1 day))
FROM
	`LinqDataTypes` `t`

