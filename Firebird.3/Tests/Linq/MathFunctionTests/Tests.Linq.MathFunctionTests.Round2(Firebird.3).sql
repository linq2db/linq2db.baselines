-- Firebird.3 Firebird3

SELECT
	"t"."c1"
FROM
	(
		SELECT
			CASE
				WHEN CAST("p"."MoneyValue" AS DOUBLE PRECISION) - FLOOR(CAST("p"."MoneyValue" AS DOUBLE PRECISION)) = 0.5 AND Mod(FLOOR(CAST("p"."MoneyValue" AS DOUBLE PRECISION)), 2) = 0
					THEN FLOOR(CAST("p"."MoneyValue" AS DOUBLE PRECISION))
				ELSE ROUND(CAST("p"."MoneyValue" AS DOUBLE PRECISION), 0)
			END as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."c1" <> 0

