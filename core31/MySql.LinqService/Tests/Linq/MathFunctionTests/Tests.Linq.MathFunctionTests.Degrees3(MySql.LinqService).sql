BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Degrees(Cast(Floor(`p`.`MoneyValue`) as SIGNED))
FROM
	`LinqDataTypes` `p`
WHERE
	(Cast(Degrees(Cast(Floor(`p`.`MoneyValue`) as SIGNED)) as Decimal(29, 10)) <> 0.10000000000000001 OR Cast(Degrees(Cast(Floor(`p`.`MoneyValue`) as SIGNED)) as Decimal(29, 10)) IS NULL)

