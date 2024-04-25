BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval 2 Month))
FROM
	`LinqDataTypes` `t`

