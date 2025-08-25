BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"p"."MoneyValue"
FROM
	"LinqDataTypes" "p"
WHERE
	CAST(Floor(CAST("p"."MoneyValue" AS Float)) AS Int) > 0

