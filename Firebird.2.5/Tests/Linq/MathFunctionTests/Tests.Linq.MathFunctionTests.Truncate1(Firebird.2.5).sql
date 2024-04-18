BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	Trunc("p"."MoneyValue", 0)
FROM
	"LinqDataTypes" "p"
WHERE
	Trunc("p"."MoneyValue", 0) <> 0.1

