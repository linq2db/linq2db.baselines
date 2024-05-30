BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval `t`.`SmallIntValue` Month)
FROM
	`LinqDataTypes` `t`

