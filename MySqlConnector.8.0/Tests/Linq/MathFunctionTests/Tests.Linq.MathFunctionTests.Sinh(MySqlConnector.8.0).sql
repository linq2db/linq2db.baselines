BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t_1`.`c1`
FROM
	(
		SELECT
			Floor(((Exp(`t`.`MoneyValue` / 15) - Exp(-(`t`.`MoneyValue` / 15))) / 2) * 15) as `c1`
		FROM
			`LinqDataTypes` `t`
	) `t_1`
WHERE
	`t_1`.`c1` <> 0.10000000000000001

