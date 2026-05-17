-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	REGEXP_REPLACE(Replace(CAST(`p`.`MoneyValue` AS CHAR(31)), ',', '.'), '(?-i)[0.]+$', '')
FROM
	`LinqDataTypes` `p`
WHERE
	CHAR_LENGTH(CAST(`p`.`MoneyValue` AS CHAR(31))) > 0

