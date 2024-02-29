BeforeExecute
-- Firebird3 Firebird

SELECT
	Cast(Floor("t"."MoneyValue") as BigInt)
FROM
	"LinqDataTypes" "t"
WHERE
	Cast(Floor("t"."MoneyValue") as BigInt) > 0

