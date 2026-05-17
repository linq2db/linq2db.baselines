-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval `t`.`SmallIntValue` Quarter))
FROM
	`LinqDataTypes` `t`

