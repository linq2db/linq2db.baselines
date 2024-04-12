BeforeExecute
-- MySqlConnector MySql

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval -1 Quarter))
FROM
	`LinqDataTypes` `t`

