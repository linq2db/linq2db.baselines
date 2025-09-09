BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"p"."MoneyValue"
FROM
	"LinqDataTypes" "p"
WHERE
	CAST("p"."MoneyValue" AS Real) > 0

