-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	CAST(TIMESTAMPDIFF(day, `t`.`DateTimeValue`, Date_Add(`t`.`DateTimeValue`, Interval 100 Hour)) AS DOUBLE)
FROM
	`LinqDataTypes` `t`

