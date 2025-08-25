BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	Mod(Extract(year from "t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

