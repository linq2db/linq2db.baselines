BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	CASE
		WHEN `t`.`MoneyValue` <> 0
			THEN 1
		ELSE 0
	END
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`MoneyValue` <> 0

