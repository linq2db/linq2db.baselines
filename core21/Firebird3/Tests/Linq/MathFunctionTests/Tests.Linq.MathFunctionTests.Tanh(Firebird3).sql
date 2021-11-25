BeforeExecute
-- Firebird3 Firebird

SELECT
	Floor(Tanh(Cast("p"."MoneyValue" as Float) / 15) * 15)
FROM
	"LinqDataTypes" "p"
WHERE
	(Floor(Tanh(Cast("p"."MoneyValue" as Float) / 15) * 15) <> 0.10000000000000001 OR Floor(Tanh(Cast("p"."MoneyValue" as Float) / 15) * 15) IS NULL)

