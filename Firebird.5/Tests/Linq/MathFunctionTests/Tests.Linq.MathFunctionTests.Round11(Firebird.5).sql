-- Firebird.5 Firebird4

SELECT
	"t"."c1"
FROM
	(
		SELECT
			CASE
				WHEN CAST("p"."MoneyValue" AS DOUBLE PRECISION) * 2 = ROUND(CAST("p"."MoneyValue" AS DOUBLE PRECISION) * 2, 1) AND CAST("p"."MoneyValue" AS DOUBLE PRECISION) <> ROUND(CAST("p"."MoneyValue" AS DOUBLE PRECISION), 1)
					THEN ROUND(CAST("p"."MoneyValue" AS DOUBLE PRECISION) / 2, 1) * 2
				ELSE ROUND(CAST("p"."MoneyValue" AS DOUBLE PRECISION), 1)
			END as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."c1" <> 0

