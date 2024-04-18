BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Trunc("p"."MoneyValue", 0)
FROM
	"LinqDataTypes" "p"
WHERE
	Trunc("p"."MoneyValue", 0) <> 0.1

