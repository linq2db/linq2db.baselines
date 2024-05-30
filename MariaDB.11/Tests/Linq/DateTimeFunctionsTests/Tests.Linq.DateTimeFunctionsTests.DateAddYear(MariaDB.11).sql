BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval 11 Year))
FROM
	`LinqDataTypes` `t`

