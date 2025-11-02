-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CAST(Concat(Extract(hour from `t`.`DateTimeValue`), ':01:01') AS TIME)
FROM
	`LinqDataTypes` `t`

