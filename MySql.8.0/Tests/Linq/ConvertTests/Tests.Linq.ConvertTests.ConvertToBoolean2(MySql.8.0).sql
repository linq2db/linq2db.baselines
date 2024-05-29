BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p_1`.`c1`
FROM
	(
		SELECT
			CASE
				WHEN `p`.`MoneyValue` <> 4.5 THEN 1
				ELSE 0
			END as `c1`
		FROM
			`LinqDataTypes` `p`
	) `p_1`
WHERE
	`p_1`.`c1` = 0

