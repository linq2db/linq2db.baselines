BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Extract(month from `t`.`TransactionDate`)
FROM
	`Transactions` `t`

