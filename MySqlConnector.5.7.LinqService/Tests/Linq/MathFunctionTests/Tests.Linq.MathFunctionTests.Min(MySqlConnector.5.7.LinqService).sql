BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t_1`.`c1`
FROM
	(
		SELECT
			CASE
				WHEN `t`.`MoneyValue` <= 5 THEN `t`.`MoneyValue`
				ELSE 5
			END as `c1`
		FROM
			`LinqDataTypes` `t`
	) `t_1`
WHERE
	`t_1`.`c1` <> 0

