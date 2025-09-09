BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"p"."MoneyValue"
FROM
	"LinqDataTypes" "p"
WHERE
	CAST(Floor("p"."MoneyValue") AS Decimal(10, 0)) > 0

