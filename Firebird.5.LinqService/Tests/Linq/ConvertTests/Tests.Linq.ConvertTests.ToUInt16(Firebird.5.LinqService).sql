BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"p"."MoneyValue"
FROM
	"LinqDataTypes" "p"
WHERE
	CAST(Floor("p"."MoneyValue") AS Int) > 0

