-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Date Int32
SET     @Date = 5

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @Date Day))
FROM
	`LinqDataTypes` `t`

