BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	CAST(Extract(year from "t"."DateTimeValue") || '-01-01' AS Date)
FROM
	"LinqDataTypes" "t"

