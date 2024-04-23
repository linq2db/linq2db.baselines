BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t_1`.`c1`
FROM
	(
		SELECT
			Truncate(`t`.`MoneyValue`, 0) as `c1`
		FROM
			`LinqDataTypes` `t`
	) `t_1`
WHERE
	`t_1`.`c1` <> 0.1

