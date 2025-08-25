BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	Extract(yearday from "t"."DateTimeValue") + 1
FROM
	"LinqDataTypes" "t"

