BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	CAST(Extract(year from "t"."DateTimeValue") || '-01-01 00:20:00' AS Timestamp)
FROM
	"LinqDataTypes" "t"

