BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	Date_Add(`t`.`TransactionDate`, Interval 1 Day)
FROM
	`Transactions` `t`

