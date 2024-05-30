BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Extract(hour from Date_Add(`t`.`DateTimeValue`, Interval 1 Hour))
FROM
	`LinqDataTypes` `t`

