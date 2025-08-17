BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"t"."MoneyValue"
FROM
	"LinqDataTypes" "t"
WHERE
	ROUND(CAST("t"."MoneyValue" AS Float)) <> 0

