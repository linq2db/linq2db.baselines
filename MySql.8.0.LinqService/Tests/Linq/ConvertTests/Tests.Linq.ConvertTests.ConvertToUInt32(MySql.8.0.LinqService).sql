BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`c1`
FROM
	(
		SELECT
			CAST(Floor(CASE
				WHEN `t`.`MoneyValue` - FLOOR(`t`.`MoneyValue`) = CAST(0.5 AS DOUBLE) AND (FLOOR(`t`.`MoneyValue`) % 2) = 0
					THEN FLOOR(`t`.`MoneyValue`)
				ELSE ROUND(`t`.`MoneyValue`, 0)
			END) AS UNSIGNED) as `c1`
		FROM
			`LinqDataTypes` `t`
	) `p`
WHERE
	`p`.`c1` > CAST(0 AS UNSIGNED INT)

