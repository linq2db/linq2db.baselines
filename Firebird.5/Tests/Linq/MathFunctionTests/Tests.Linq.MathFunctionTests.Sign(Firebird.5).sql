BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Sign("p"."MoneyValue")
FROM
	"LinqDataTypes" "p"
WHERE
	Sign("p"."MoneyValue") <> 0

