BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM Replace(CAST(`p`.`MoneyValue` AS CHAR(31)), ',', '.')))
FROM
	`LinqDataTypes` `p`
WHERE
	CHAR_LENGTH(CAST(`p`.`MoneyValue` AS CHAR(31))) > 0

