BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Mod(Extract(month from "t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

