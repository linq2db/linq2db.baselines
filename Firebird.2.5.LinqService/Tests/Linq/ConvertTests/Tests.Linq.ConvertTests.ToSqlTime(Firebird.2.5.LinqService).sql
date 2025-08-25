BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	CAST(Extract(hour from "t"."DateTimeValue") || ':01:01' AS Time)
FROM
	"LinqDataTypes" "t"

