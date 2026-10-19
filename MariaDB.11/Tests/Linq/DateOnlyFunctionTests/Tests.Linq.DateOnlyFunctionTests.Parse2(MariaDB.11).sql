-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(CAST(`d`.`TransactionDate` AS CHAR(10)) AS DATE)
FROM
	`Transactions` `d`
WHERE
	Extract(day from CAST(CAST(`d`.`TransactionDate` AS CHAR(10)) AS DATE)) > 0

