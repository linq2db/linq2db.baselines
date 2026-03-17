-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	Extract(month from `t`.`TransactionDate`)
FROM
	`Transactions` `t`

