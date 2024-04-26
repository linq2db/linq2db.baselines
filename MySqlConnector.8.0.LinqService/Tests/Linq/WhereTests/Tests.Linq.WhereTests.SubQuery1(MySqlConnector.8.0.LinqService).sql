BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`pp_1`.`Value_1`
FROM
	(
		SELECT
			CASE
				WHEN `pp`.`MoneyValue` * 2 = Round(`pp`.`MoneyValue` * 2, 2) AND `pp`.`MoneyValue` <> Round(`pp`.`MoneyValue`, 2)
					THEN Round(`pp`.`MoneyValue` / 2, 2) * 2
				ELSE Round(`pp`.`MoneyValue`, 2)
			END as `Value_1`
		FROM
			`LinqDataTypes` `pp`
	) `pp_1`
WHERE
	`pp_1`.`Value_1` <> 0 AND `pp_1`.`Value_1` <> 7

