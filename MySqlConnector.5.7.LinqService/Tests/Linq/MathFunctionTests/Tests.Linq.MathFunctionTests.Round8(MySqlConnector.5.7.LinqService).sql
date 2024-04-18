BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			CASE
				WHEN `p`.`MoneyValue` - Floor(`p`.`MoneyValue`) = 0.5 AND Floor(`p`.`MoneyValue`) % 2 = 0
					THEN Floor(`p`.`MoneyValue`)
				ELSE Round(`p`.`MoneyValue`, 0)
			END as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`c1` <> 0

