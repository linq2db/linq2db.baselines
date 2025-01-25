BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	CAST(`p`.`MoneyValue` AS CHAR(31))
FROM
	`LinqDataTypes` `p`
WHERE
	Char_Length(CAST(`p`.`MoneyValue` AS CHAR(31))) > 0

