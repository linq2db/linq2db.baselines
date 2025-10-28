BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	Extract(hour from Date_Add(`t`.`DateTimeValue`, Interval 22 Hour))
FROM
	`LinqDataTypes` `t`

