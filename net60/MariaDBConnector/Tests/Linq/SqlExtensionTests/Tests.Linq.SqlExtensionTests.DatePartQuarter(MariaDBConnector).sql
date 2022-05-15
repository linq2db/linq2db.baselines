BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	Extract(quarter from `t`.`DateTimeValue`)
FROM
	`LinqDataTypes` `t`

