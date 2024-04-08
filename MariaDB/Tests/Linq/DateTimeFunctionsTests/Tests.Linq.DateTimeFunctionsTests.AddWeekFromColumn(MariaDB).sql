BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval `t`.`SmallIntValue` Week))
FROM
	`LinqDataTypes` `t`

