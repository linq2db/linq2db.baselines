BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	Extract(day from `t`.`TransactionDate`)
FROM
	`Transactions` `t`

