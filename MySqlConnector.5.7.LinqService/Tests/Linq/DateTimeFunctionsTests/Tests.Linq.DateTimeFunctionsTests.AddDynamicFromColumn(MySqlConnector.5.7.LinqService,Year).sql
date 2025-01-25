BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval `t`.`SmallIntValue` Year)
FROM
	`LinqDataTypes` `t`

