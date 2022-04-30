BeforeExecute
-- Firebird

SELECT
	Cast("p"."MoneyValue" as Float) * 57.295779513082323
FROM
	"LinqDataTypes" "p"
WHERE
	Cast("p"."MoneyValue" as Float) * 57.295779513082323 <> 0.10000000000000001

