-- Firebird.3 Firebird3

SELECT
	"p"."c1"
FROM
	(
		SELECT
			CAST("t"."MoneyValue" AS DOUBLE PRECISION) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "p"
WHERE
	"p"."c1" > 0

