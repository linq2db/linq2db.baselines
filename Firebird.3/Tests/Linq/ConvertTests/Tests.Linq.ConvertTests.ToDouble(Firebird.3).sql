-- Firebird.3 Firebird3

SELECT
	"p"."MoneyValue"
FROM
	"LinqDataTypes" "p"
WHERE
	CAST(Floor(CAST("p"."MoneyValue" AS DOUBLE PRECISION)) AS Int) > 0

