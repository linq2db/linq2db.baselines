BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Cast(Concat(Extract(hour from `t`.`DateTimeValue`), ':01:01') as Time)
FROM
	`LinqDataTypes` `t`

