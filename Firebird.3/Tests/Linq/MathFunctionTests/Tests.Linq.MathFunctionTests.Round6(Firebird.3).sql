BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t"."MoneyValue"
FROM
	"LinqDataTypes" "t"
WHERE
	ROUND(CAST("t"."MoneyValue" AS Float)) <> 0

