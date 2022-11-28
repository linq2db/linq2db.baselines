BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	Extract(hour from `t`.`DateTimeValue`)
FROM
	`LinqDataTypes` `t`

