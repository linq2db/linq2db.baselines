BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	CAST(`p`.`MoneyValue` AS CHAR(31))
FROM
	`LinqDataTypes` `p`
WHERE
	Char_Length(CAST(`p`.`MoneyValue` AS CHAR(31))) > 0

