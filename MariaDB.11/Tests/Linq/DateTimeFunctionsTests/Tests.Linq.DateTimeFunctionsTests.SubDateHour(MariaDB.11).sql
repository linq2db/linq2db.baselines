-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	CAST(TIMESTAMPDIFF(hour, `t`.`DateTimeValue`, Date_Add(`t`.`DateTimeValue`, Interval 100 Hour)) AS DOUBLE)
FROM
	`LinqDataTypes` `t`

