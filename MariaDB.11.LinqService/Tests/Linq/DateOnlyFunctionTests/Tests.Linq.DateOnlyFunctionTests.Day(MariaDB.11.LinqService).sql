BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	Extract(day from `t`.`TransactionDate`)
FROM
	`Transactions` `t`

