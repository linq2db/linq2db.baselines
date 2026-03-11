-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CAST(Concat(CAST(Extract(year from `t`.`DateTimeValue`) AS CHAR(11)), '-01-01') AS DATE)
FROM
	`LinqDataTypes` `t`

