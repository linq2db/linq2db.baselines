BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	TIMESTAMPDIFF(second, `t`.`DateTimeValue`, Date_Add(`t`.`DateTimeValue`, Interval 100 Minute))
FROM
	`LinqDataTypes` `t`

