BeforeExecute
-- Firebird

SELECT
	Cast(Floor("t"."MoneyValue") as Decimal)
FROM
	"LinqDataTypes" "t"
WHERE
	Cast(Floor("t"."MoneyValue") as Decimal) > 0

