BeforeExecute
-- Firebird3 Firebird

SELECT
	Floor(Sinh(Cast("p"."MoneyValue" as Float) / 15) * 15)
FROM
	"LinqDataTypes" "p"
WHERE
	(Floor(Sinh(Cast("p"."MoneyValue" as Float) / 15) * 15) <> 0.10000000000000001 OR Floor(Sinh(Cast("p"."MoneyValue" as Float) / 15) * 15) IS NULL)

