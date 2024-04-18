BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Sign(`p`.`MoneyValue`)
FROM
	`LinqDataTypes` `p`
WHERE
	Sign(`p`.`MoneyValue`) <> 0

