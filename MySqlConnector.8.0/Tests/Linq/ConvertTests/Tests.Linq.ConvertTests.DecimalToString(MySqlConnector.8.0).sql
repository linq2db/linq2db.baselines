-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	REGEXP_REPLACE(Replace(CAST(`p`.`MoneyValue` AS CHAR(31)), ',', '.'), '(?-i)[0.]+$', '')
FROM
	`LinqDataTypes` `p`
WHERE
	CHAR_LENGTH(CAST(`p`.`MoneyValue` AS CHAR(31))) > 0

