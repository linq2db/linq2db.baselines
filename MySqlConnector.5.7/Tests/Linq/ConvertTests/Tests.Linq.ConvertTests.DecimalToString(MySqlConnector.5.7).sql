BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CAST(`p`.`MoneyValue` AS CHAR(31))
FROM
	`LinqDataTypes` `p`
WHERE
	Char_Length(CAST(`p`.`MoneyValue` AS CHAR(31))) > 0

