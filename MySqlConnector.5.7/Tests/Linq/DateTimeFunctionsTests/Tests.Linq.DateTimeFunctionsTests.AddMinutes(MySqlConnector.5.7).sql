-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Extract(minute from Date_Add(`t`.`DateTimeValue`, Interval -8 Minute))
FROM
	`LinqDataTypes` `t`

