BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	CAST(Concat(Extract(hour from `t`.`DateTimeValue`), ':01:01') AS TIME)
FROM
	`LinqDataTypes` `t`

