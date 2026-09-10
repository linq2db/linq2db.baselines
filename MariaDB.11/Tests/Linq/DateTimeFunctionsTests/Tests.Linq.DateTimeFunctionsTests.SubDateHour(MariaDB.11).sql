-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(TimestampDiff(Microsecond, `t`.`DateTimeValue`, Date_Add(`t`.`DateTimeValue`, Interval 100 Hour)) * 10 AS DOUBLE) / 36000000000
FROM
	`LinqDataTypes` `t`

