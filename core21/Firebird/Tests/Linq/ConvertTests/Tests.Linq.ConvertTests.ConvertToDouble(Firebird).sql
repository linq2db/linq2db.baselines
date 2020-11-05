BeforeExecute
-- Firebird

SELECT
	Cast("t"."MoneyValue" as Float)
FROM
	"LinqDataTypes" "t"
WHERE
	Cast("t"."MoneyValue" as Float) > 0

