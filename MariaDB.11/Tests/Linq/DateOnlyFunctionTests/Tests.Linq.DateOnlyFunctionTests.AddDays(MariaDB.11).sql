-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	Date_Add(`t`.`TransactionDate`, Interval 5 Day)
FROM
	`Transactions` `t`

