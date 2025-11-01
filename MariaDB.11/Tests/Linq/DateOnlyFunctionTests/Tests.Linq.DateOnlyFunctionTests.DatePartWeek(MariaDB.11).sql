-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	Extract(week from `t`.`TransactionDate`)
FROM
	`Transactions` `t`

