BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	Extract(week from `t`.`TransactionDate`)
FROM
	`Transactions` `t`

