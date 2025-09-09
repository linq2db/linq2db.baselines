BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	CAST(Extract(year from "t"."DateTimeValue") || '-01-01' AS Date)
FROM
	"LinqDataTypes" "t"

