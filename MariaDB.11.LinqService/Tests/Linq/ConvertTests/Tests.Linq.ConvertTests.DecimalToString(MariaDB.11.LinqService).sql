BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM Replace(CAST(`p`.`MoneyValue` AS CHAR(31)), ',', '.')))
FROM
	`LinqDataTypes` `p`
WHERE
	CHAR_LENGTH(CAST(`p`.`MoneyValue` AS CHAR(31))) > 0

