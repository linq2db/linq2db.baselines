BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Cast(Floor("t"."MoneyValue") as Int)
FROM
	"LinqDataTypes" "t"
WHERE
	Cast(Floor("t"."MoneyValue") as Int) > 0

