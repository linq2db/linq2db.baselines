BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Date Int32
SET     @Date = -2

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @Date Month))
FROM
	`LinqDataTypes` `t`

