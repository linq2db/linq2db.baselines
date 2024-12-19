BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`c1`
FROM
	(
		SELECT
			CASE
				WHEN `t`.`MoneyValue` <> 0 THEN 1
				ELSE 0
			END as `c1`
		FROM
			`LinqDataTypes` `t`
	) `p`
WHERE
	`p`.`c1` = 1

