BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	Extract(year from `t`.`DateTimeValue`) % 7
FROM
	`LinqDataTypes` `t`

