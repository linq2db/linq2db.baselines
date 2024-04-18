BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Truncate((-`p`.`MoneyValue`), 0)
FROM
	`LinqDataTypes` `p`
WHERE
	Truncate((-`p`.`MoneyValue`), 0) <> 0.10000000000000001

