BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval `t`.`SmallIntValue` Quarter))
FROM
	`LinqDataTypes` `t`

