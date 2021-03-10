BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			Floor(Cot(`p`.`MoneyValue` / 15) * 15) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	(`t`.`c1` <> 0.10000000000000001 OR `t`.`c1` IS NULL)

