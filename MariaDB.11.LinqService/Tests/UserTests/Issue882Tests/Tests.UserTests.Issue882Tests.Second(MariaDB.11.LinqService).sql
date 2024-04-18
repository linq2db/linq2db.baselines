BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Extract(second from `t`.`DateTimeValue`) % 7
FROM
	`LinqDataTypes` `t`

