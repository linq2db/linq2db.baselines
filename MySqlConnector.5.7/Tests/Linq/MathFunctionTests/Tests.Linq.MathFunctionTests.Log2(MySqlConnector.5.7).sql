BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t_1`.`c1`
FROM
	(
		SELECT
			Floor(Log(2, `t`.`MoneyValue`)) as `c1`
		FROM
			`LinqDataTypes` `t`
	) `t_1`
WHERE
	`t_1`.`c1` <> 0.10000000000000001

