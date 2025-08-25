BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"p"."MoneyValue"
FROM
	"LinqDataTypes" "p"
WHERE
	CAST(Floor("p"."MoneyValue") AS SmallInt) > 0

