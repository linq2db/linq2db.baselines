BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	Extract(day from `t`.`DateTimeValue`)
FROM
	`LinqDataTypes` `t`

