BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`pp`.`Value_1`
FROM
	(
		SELECT
			CASE
				WHEN `p`.`MoneyValue` * 2 = Round(`p`.`MoneyValue` * 2, 2) AND `p`.`MoneyValue` <> Round(`p`.`MoneyValue`, 2)
					THEN Round(`p`.`MoneyValue` / 2, 2) * 2
				ELSE Round(`p`.`MoneyValue`, 2)
			END as `Value_1`
		FROM
			`LinqDataTypes` `p`
	) `pp`
WHERE
	`pp`.`Value_1` <> 0 AND `pp`.`Value_1` <> 7

