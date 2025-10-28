BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	Extract(day from `t`.`DateTimeValue`) % 7
FROM
	`LinqDataTypes` `t`

