BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Extract(minute from Date_Add(`t`.`DateTimeValue`, Interval 5 Minute))
FROM
	`LinqDataTypes` `t`

