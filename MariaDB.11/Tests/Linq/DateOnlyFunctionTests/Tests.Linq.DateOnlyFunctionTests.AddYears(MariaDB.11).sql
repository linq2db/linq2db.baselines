BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Date_Add(`t`.`TransactionDate`, Interval 12 Year)
FROM
	`Transactions` `t`

