BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	CAST(Extract(hour from "t"."DateTimeValue") || ':01:01' AS Time)
FROM
	"LinqDataTypes" "t"

