-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	CAST(Concat(Extract(year from `t`.`DateTimeValue`), '-01-01') AS DATE)
FROM
	`LinqDataTypes` `t`

