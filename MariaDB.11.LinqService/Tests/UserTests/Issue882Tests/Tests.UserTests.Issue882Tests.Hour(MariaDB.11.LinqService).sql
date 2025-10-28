BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	Extract(hour from `t`.`DateTimeValue`) % 7
FROM
	`LinqDataTypes` `t`

