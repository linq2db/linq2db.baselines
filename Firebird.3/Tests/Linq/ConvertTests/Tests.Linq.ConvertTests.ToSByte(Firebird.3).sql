BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Cast(Floor("t"."MoneyValue") as SmallInt)
FROM
	"LinqDataTypes" "t"
WHERE
	Cast(Floor("t"."MoneyValue") as SmallInt) > 0

