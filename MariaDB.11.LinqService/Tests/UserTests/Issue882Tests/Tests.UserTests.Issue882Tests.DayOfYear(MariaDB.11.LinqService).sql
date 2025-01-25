BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	DayOfYear(`t`.`DateTimeValue`) % 7
FROM
	`LinqDataTypes` `t`

