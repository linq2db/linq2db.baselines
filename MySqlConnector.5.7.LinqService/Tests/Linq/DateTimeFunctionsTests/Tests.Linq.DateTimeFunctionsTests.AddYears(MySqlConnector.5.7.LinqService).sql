BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval 1 Year))
FROM
	`LinqDataTypes` `t`

