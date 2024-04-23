BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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

