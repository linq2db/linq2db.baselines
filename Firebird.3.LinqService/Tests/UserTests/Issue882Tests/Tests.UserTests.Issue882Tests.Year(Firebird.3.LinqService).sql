BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	Mod(Extract(year from "t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

