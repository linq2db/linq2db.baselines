BeforeExecute
-- Firebird3 Firebird

SELECT
	Cast(Floor(Cast("p"."MoneyValue" as Float)) as Int)
FROM
	"LinqDataTypes" "p"
WHERE
	Cast(Floor(Cast("p"."MoneyValue" as Float)) as Int) > 0

