BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"p"."MoneyValue"
FROM
	"LinqDataTypes" "p"
WHERE
	CAST(Floor("p"."MoneyValue") AS SmallInt) > 0

