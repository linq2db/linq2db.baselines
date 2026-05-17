-- Firebird.4 Firebird4

SELECT
	Extract(yearday from "t"."DateTimeValue") + 1
FROM
	"LinqDataTypes" "t"

