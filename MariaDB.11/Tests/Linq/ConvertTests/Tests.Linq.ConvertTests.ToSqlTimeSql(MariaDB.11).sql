-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	CAST(Concat(CAST(Extract(hour from `t`.`DateTimeValue`) AS CHAR(11)), ':01:01') AS TIME)
FROM
	`LinqDataTypes` `t`

