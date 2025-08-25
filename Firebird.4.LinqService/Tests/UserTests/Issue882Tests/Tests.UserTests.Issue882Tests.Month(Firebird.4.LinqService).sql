BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	Mod(Extract(month from "t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

