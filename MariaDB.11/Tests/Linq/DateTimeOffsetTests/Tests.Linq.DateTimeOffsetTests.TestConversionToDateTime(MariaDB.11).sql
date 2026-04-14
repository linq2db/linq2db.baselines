-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`x`.`TransactionId`,
	CAST(`x`.`TransactionDate` AS DATETIME)
FROM
	`DateTimeOffsetTable` `x`
ORDER BY
	CAST(`x`.`TransactionDate` AS DATETIME)

