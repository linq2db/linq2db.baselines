BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`d`.`TransactionDate`
FROM
	`Transactions` `d`
WHERE
	Extract(day from `d`.`TransactionDate`) > 0

