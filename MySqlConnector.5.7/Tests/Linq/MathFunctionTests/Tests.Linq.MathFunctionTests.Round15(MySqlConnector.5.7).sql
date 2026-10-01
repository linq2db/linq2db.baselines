-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	ROUND(`p`.`MoneyValue`, 5) + `p`.`MoneyValue`
FROM
	`LinqDataTypes` `p`
WHERE
	`p`.`MoneyValue` <> 0

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	CASE
		WHEN `p`.`MoneyValue` * 2 = ROUND(`p`.`MoneyValue` * 2, 5) AND `p`.`MoneyValue` <> ROUND(`p`.`MoneyValue`, 5)
			THEN ROUND(`p`.`MoneyValue` / 2, 5) * 2
		ELSE ROUND(`p`.`MoneyValue`, 5)
	END + `p`.`MoneyValue`
FROM
	`LinqDataTypes` `p`
WHERE
	`p`.`MoneyValue` <> 0

