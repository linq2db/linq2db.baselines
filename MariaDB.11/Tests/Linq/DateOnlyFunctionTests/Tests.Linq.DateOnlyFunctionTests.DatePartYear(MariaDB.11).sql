BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Extract(year from `t`.`TransactionDate`)
FROM
	`Transactions` `t`

