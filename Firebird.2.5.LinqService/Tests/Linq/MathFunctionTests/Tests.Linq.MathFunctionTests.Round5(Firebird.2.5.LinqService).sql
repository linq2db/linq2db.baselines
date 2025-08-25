BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"t"."MoneyValue"
FROM
	"LinqDataTypes" "t"
WHERE
	ROUND("t"."MoneyValue") <> 0

