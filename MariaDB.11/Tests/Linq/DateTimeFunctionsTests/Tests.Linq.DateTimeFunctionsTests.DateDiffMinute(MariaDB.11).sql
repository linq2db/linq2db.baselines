BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	TIMESTAMPDIFF(minute, `t`.`DateTimeValue`, Date_Add(`t`.`DateTimeValue`, Interval 100 Minute))
FROM
	`LinqDataTypes` `t`

