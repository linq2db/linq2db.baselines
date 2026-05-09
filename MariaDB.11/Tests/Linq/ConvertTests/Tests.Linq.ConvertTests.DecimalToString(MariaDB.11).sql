-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	Replace(CAST(`p`.`MoneyValue` AS CHAR(31)), ',', '.')
FROM
	`LinqDataTypes` `p`
WHERE
	CHAR_LENGTH(CAST(`p`.`MoneyValue` AS CHAR(31))) > 0

