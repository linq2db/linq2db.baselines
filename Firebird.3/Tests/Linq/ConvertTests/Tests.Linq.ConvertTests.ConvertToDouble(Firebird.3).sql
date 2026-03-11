-- Firebird.3 Firebird3

SELECT
	CAST("p"."MoneyValue" AS DOUBLE PRECISION)
FROM
	"LinqDataTypes" "p"
WHERE
	CAST("p"."MoneyValue" AS DOUBLE PRECISION) > 0

