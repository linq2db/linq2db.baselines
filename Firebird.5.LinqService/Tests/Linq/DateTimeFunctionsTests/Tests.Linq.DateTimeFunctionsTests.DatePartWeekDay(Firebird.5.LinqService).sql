BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	Extract(weekday from "t"."DateTimeValue") + 1
FROM
	"LinqDataTypes" "t"

