-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`MoneyValue`
FROM
	`LinqDataTypes` `t`
WHERE
	CASE
		WHEN `t`.`MoneyValue` * 2 = ROUND(`t`.`MoneyValue` * 2, 1) AND `t`.`MoneyValue` <> ROUND(`t`.`MoneyValue`, 1)
			THEN ROUND(`t`.`MoneyValue` / 2, 1) * 2
		ELSE ROUND(`t`.`MoneyValue`, 1)
	END <> 0

