BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	WeekDay(Date_Add(`t`.`TransactionDate`, interval 1 day)) + 1
FROM
	`Transactions` `t`

