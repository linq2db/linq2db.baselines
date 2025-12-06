-- Firebird.3 Firebird3

SELECT
	Extract(yearday from "t"."DateTimeValue") + 1
FROM
	"LinqDataTypes" "t"

