BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Extract(hour from Date_Add(`t`.`DateTimeValue`, Interval CAST(22 AS DOUBLE) Hour))
FROM
	`LinqDataTypes` `t`

