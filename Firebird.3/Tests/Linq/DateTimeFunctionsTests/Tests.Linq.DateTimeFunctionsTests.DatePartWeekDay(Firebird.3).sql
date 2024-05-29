BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Extract(weekday from "t"."DateTimeValue") + 1
FROM
	"LinqDataTypes" "t"

