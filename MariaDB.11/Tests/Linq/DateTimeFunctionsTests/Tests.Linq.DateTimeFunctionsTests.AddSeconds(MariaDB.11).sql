-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	Extract(second from Date_Add(`t`.`DateTimeValue`, Interval -35 Second))
FROM
	`LinqDataTypes` `t`

