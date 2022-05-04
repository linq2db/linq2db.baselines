BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			Degrees(Cast(Floor(`p`.`MoneyValue`) as SIGNED)) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	(Cast(`t`.`c1` as Decimal(29, 10)) <> 0.10000000000000001 OR Cast(`t`.`c1` as Decimal(29, 10)) IS NULL)

