BeforeExecute
-- Firebird

SELECT
	Cast("t"."MoneyValue" as Decimal(18, 10))
FROM
	"LinqDataTypes" "t"
WHERE
	Cast("t"."MoneyValue" as Decimal(18, 10)) > 0

