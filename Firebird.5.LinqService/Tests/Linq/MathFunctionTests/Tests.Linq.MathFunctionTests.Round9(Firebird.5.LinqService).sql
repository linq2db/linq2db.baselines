BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"t"."MoneyValue"
FROM
	"LinqDataTypes" "t"
WHERE
	ROUND("t"."MoneyValue", 1) <> 0

