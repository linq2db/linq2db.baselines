BeforeExecute
-- Firebird.4 Firebird4

SELECT
	CAST(Extract(year from "t"."DateTimeValue") || '-01-01' AS Date)
FROM
	"LinqDataTypes" "t"

