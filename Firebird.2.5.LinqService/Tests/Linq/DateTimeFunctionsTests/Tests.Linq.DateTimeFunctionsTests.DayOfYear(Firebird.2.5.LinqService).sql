BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	Extract(yearday from "t"."DateTimeValue") + 1
FROM
	"LinqDataTypes" "t"

