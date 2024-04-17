BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Cast(Floor("t"."MoneyValue") as Int)
FROM
	"LinqDataTypes" "t"
WHERE
	Cast(Floor("t"."MoneyValue") as Int) > 0

