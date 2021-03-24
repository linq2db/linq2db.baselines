BeforeExecute
-- MySqlConnector MySql

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval Cast(`t`.`SmallIntValue` as Decimal(29, 10)) Second)
FROM
	`LinqDataTypes` `t`

