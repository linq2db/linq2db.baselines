BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Cast(Date_Add(`t`.`DateTimeValue`, Interval `t`.`SmallIntValue` Week) as Date)
FROM
	`LinqDataTypes` `t`

