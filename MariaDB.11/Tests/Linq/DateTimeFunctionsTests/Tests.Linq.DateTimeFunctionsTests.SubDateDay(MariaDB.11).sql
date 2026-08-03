-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(CAST(TIMESTAMPDIFF(MICROSECOND, `t`.`DateTimeValue`, Date_Add(`t`.`DateTimeValue`, Interval 100 Hour)) * 10 AS SIGNED) AS DOUBLE) / 864000000000
FROM
	`LinqDataTypes` `t`

