BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	TIMESTAMPDIFF(day, `t`.`DateTimeValue`, Date_Add(`t`.`DateTimeValue`, Interval 100 Hour))
FROM
	`LinqDataTypes` `t`

