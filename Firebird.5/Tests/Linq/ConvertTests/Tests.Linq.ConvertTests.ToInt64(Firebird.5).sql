BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Cast(Floor("t"."MoneyValue") as BigInt)
FROM
	"LinqDataTypes" "t"
WHERE
	Cast(Floor("t"."MoneyValue") as BigInt) > 0

