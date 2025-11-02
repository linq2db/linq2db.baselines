-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	Extract(hour from `t`.`DateTimeValue`) % 7
FROM
	`LinqDataTypes` `t`

