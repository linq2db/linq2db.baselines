BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	CASE
		WHEN `t_1`.`c1` * 2 = Round(`t_1`.`c1` * 2, 5) AND `t_1`.`c1` <> Round(`t_1`.`c1`, 5)
			THEN Round(`t_1`.`c1` / 2, 5) * 2
		ELSE Round(`t_1`.`c1`, 5)
	END
FROM
	(
		SELECT
			CASE
				WHEN `t`.`MoneyValue` * 2 = Round(`t`.`MoneyValue` * 2, 1) AND `t`.`MoneyValue` <> Round(`t`.`MoneyValue`, 1)
					THEN Round(`t`.`MoneyValue` / 2, 1) * 2
				ELSE Round(`t`.`MoneyValue`, 1)
			END as `c1`
		FROM
			`LinqDataTypes` `t`
	) `t_1`
WHERE
	`t_1`.`c1` <> 0

