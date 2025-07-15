BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Mod(Extract(year from "t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

