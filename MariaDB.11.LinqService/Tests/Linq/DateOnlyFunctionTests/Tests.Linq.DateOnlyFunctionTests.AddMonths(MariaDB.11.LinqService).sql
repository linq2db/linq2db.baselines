BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	Date_Add(`t`.`TransactionDate`, Interval -2 Month)
FROM
	`Transactions` `t`

