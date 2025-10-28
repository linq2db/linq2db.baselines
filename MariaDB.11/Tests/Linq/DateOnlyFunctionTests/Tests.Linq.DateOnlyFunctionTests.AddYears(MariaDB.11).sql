BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	Date_Add(`t`.`TransactionDate`, Interval 12 Year)
FROM
	`Transactions` `t`

