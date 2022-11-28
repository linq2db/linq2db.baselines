BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	Extract(minute from `t`.`DateTimeValue`)
FROM
	`LinqDataTypes` `t`

