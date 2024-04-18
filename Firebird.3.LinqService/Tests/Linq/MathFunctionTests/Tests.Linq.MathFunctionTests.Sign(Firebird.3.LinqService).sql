BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Sign("p"."MoneyValue")
FROM
	"LinqDataTypes" "p"
WHERE
	Sign("p"."MoneyValue") <> 0

