BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval `t`.`SmallIntValue` Minute)
FROM
	`LinqDataTypes` `t`

