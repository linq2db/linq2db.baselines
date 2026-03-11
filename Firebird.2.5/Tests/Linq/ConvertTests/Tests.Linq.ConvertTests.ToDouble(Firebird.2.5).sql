-- Firebird.2.5 Firebird

SELECT
	"p"."MoneyValue"
FROM
	"LinqDataTypes" "p"
WHERE
	CAST(Floor(CAST("p"."MoneyValue" AS DOUBLE PRECISION)) AS Int) > 0

