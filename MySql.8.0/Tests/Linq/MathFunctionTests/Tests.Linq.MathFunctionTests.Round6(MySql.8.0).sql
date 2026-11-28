-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t`.`c1`
FROM
	(
		SELECT
			sign(`p`.`MoneyValue`) * CASE
				WHEN abs(`p`.`MoneyValue`) - floor(abs(`p`.`MoneyValue`)) = 0.5
					THEN floor(abs(`p`.`MoneyValue`)) + 1
				ELSE round(abs(`p`.`MoneyValue`), 0)
			END as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`c1` <> 0

