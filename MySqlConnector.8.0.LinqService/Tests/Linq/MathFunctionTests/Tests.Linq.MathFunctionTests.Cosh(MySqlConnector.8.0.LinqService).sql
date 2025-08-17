BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`t`.`Value_1`
FROM
	(
		SELECT
			Floor(((Exp(`p`.`MoneyValue` / 15) + Exp(-(`p`.`MoneyValue` / 15))) / 2) * 15) as `Value_1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`Value_1` <> 0.10000000000000001

