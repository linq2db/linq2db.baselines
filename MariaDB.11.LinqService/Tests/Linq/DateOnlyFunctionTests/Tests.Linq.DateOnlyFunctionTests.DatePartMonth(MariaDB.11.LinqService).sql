BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	Extract(month from `t`.`TransactionDate`)
FROM
	`Transactions` `t`

