-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Extract(second from Date_Add(`t`.`DateTimeValue`, Interval -35 Second))
FROM
	`LinqDataTypes` `t`

