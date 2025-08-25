BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	Extract(yearday from "t"."DateTimeValue") + 1
FROM
	"LinqDataTypes" "t"

