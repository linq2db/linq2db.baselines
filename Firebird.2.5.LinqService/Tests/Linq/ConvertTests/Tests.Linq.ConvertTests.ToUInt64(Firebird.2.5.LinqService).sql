BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"p"."MoneyValue"
FROM
	"LinqDataTypes" "p"
WHERE
	CAST(Floor("p"."MoneyValue") AS Decimal(10, 0)) > 0

