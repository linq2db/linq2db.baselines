-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	CAST(TIMESTAMPDIFF(minute, `t`.`DateTimeValue`, Date_Add(`t`.`DateTimeValue`, Interval 100 Minute)) AS DOUBLE)
FROM
	`LinqDataTypes` `t`

