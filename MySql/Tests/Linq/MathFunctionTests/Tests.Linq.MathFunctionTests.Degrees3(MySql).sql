BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t_1`.`c1`
FROM
	(
		SELECT
			Degrees(Cast(Floor(`t`.`MoneyValue`) as SIGNED)) as `c1`
		FROM
			`LinqDataTypes` `t`
	) `t_1`
WHERE
	Cast(`t_1`.`c1` as Decimal(29, 10)) <> 0.10000000000000001

