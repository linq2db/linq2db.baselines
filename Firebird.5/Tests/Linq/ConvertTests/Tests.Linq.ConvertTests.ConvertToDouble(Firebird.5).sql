-- Firebird.5 Firebird4

SELECT
	CAST("p"."MoneyValue" AS DOUBLE PRECISION)
FROM
	"LinqDataTypes" "p"
WHERE
	CAST("p"."MoneyValue" AS DOUBLE PRECISION) > 0

