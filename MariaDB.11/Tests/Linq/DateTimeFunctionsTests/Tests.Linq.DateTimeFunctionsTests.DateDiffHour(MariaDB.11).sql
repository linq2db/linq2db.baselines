BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	TIMESTAMPDIFF(hour, `t`.`DateTimeValue`, Date_Add(`t`.`DateTimeValue`, Interval 100 Hour))
FROM
	`LinqDataTypes` `t`

