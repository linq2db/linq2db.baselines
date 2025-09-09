BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	Mod(Extract(yearday from "t"."DateTimeValue") + 1, 7)
FROM
	"LinqDataTypes" "t"

