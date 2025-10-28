BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	Extract(second from Date_Add(`t`.`DateTimeValue`, Interval 41 Second))
FROM
	`LinqDataTypes` `t`

