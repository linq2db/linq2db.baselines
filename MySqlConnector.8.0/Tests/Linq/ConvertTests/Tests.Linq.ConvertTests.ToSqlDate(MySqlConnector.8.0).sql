-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	CAST(Concat(CAST(Extract(year from `t`.`DateTimeValue`) AS CHAR(11)), '-01-01') AS DATE)
FROM
	`LinqDataTypes` `t`

