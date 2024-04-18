BeforeExecute
-- Firebird.4 Firebird4

SELECT
	Cast(Floor("t"."MoneyValue") as SmallInt)
FROM
	"LinqDataTypes" "t"
WHERE
	Cast(Floor("t"."MoneyValue") as SmallInt) > 0

