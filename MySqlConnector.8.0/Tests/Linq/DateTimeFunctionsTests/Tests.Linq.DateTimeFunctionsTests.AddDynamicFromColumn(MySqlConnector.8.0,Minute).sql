BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval `t`.`SmallIntValue` Minute)
FROM
	`LinqDataTypes` `t`

