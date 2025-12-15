-- Firebird.3 Firebird3

SELECT
	"t"."Value_1"
FROM
	(
		SELECT
			Floor(CAST(Power(CAST("p"."MoneyValue" AS DOUBLE PRECISION), CAST(3 AS DOUBLE PRECISION)) AS Decimal(18, 10))) as "Value_1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."Value_1" <> 0

