BeforeExecute
-- Firebird

SELECT
	Floor(Log(2, Cast("p"."MoneyValue" as Float)))
FROM
	"LinqDataTypes" "p"
WHERE
	(Floor(Log(2, Cast("p"."MoneyValue" as Float))) <> 0.10000000000000001 OR Floor(Log(2, Cast("p"."MoneyValue" as Float))) IS NULL)

