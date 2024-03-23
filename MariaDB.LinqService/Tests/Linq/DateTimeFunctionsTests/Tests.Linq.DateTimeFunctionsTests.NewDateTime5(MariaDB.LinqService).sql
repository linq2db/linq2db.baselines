BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Extract(year from `t`.`DateTimeValue`) + 1
FROM
	`LinqDataTypes` `t`

