BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	Extract(weekday from "t"."DateTimeValue") + 1
FROM
	"LinqDataTypes" "t"

