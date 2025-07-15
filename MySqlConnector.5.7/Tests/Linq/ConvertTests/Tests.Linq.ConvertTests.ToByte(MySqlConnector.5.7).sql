BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`MoneyValue`
FROM
	`LinqDataTypes` `p`
WHERE
	CAST(Floor(`p`.`MoneyValue`) AS UNSIGNED) > 0

