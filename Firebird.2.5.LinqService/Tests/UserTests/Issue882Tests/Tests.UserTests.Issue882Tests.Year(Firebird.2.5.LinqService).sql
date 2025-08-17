BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	Mod(Extract(year from "t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

