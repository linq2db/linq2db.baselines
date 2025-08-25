BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	Mod(Extract(yearday from "t"."DateTimeValue") + 1, 7)
FROM
	"LinqDataTypes" "t"

