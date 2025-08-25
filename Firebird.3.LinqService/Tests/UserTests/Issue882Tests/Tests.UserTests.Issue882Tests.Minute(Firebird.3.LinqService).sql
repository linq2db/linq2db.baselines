BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	Mod(Extract(minute from "t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

