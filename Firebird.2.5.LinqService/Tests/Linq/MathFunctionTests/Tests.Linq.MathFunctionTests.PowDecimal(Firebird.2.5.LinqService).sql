BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Floor(CAST(Power(CAST("p"."MoneyValue" AS Float), CAST(3 AS Float)) AS Decimal(18, 12))) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."c1" <> 0

