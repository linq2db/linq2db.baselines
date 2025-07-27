BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CASE
		WHEN `t2`.`x` < CAST(0 AS DECIMAL(1)) THEN CAST(9 AS DECIMAL(1))
		ELSE `t2`.`x` + CAST(8 AS DECIMAL(1))
	END,
	`t2`.`x` + `t2`.`x`
FROM
	(
		SELECT
			(
				SELECT
					SUM(`t1`.`MoneyValue`)
				FROM
					`LinqDataTypes` `t1`
			) as `x`
		FROM
			`LinqDataTypes` `q`
	) `t2`

