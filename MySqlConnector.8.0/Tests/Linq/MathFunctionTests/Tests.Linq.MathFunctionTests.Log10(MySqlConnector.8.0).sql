BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t_1`.`c1`
FROM
	(
		SELECT
			Floor(Log10(`t`.`MoneyValue`)) as `c1`
		FROM
			`LinqDataTypes` `t`
	) `t_1`
WHERE
	`t_1`.`c1` <> 0.10000000000000001

