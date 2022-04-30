BeforeExecute
-- Firebird3 Firebird

SELECT
	Trunc("p"."MoneyValue", 0)
FROM
	"LinqDataTypes" "p"
WHERE
	(Trunc("p"."MoneyValue", 0) <> 0.1 OR Trunc("p"."MoneyValue", 0) IS NULL)

