BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`Value_1`
FROM
	(
		SELECT
			Floor(Acos(`p`.`MoneyValue` / CAST(15 AS DOUBLE)) * CAST(15 AS DOUBLE)) as `Value_1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`Value_1` <> CAST(0.10000000000000001 AS DOUBLE)

