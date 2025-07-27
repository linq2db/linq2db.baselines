BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	CAST(`t`.`MoneyValue` * CAST(1000 AS DECIMAL(4)) AS DECIMAL(10, 4))
FROM
	`LinqDataTypes` `t`

