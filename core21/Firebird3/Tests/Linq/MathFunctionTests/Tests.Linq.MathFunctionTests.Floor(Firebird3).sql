BeforeExecute
-- Firebird3 Firebird

SELECT
	Floor(-("p"."MoneyValue" + 1))
FROM
	"LinqDataTypes" "p"
WHERE
	Floor(-("p"."MoneyValue" + 1)) <> 0

