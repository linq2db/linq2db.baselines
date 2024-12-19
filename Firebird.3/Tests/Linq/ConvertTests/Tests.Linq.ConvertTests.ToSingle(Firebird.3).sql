BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"p"."MoneyValue"
FROM
	"LinqDataTypes" "p"
WHERE
	CAST("p"."MoneyValue" AS Real) > 0

