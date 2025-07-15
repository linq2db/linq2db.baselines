BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t"."MoneyValue"
FROM
	"LinqDataTypes" "t"
WHERE
	ROUND("t"."MoneyValue") <> 0

