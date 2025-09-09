BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	Extract(hour from Date_Add(`t`.`DateTimeValue`, Interval 1 Hour))
FROM
	`LinqDataTypes` `t`

