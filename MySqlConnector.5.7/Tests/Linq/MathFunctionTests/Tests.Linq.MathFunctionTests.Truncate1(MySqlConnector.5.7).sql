BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Truncate(`p`.`MoneyValue`, 0)
FROM
	`LinqDataTypes` `p`
WHERE
	Truncate(`p`.`MoneyValue`, 0) <> 0.1

