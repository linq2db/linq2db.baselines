-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	DayOfYear(`t`.`DateTimeValue`) % 7
FROM
	`LinqDataTypes` `t`

