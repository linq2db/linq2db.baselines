BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	Extract(yearday from "t"."DateTimeValue") + 1
FROM
	"LinqDataTypes" "t"

