-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CAST(Concat(Extract(year from `t`.`DateTimeValue`), '-01-01 00:20:00') AS DATETIME)
FROM
	`LinqDataTypes` `t`

