BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	CAST(Extract(year from "d"."DateTimeValue") || '-02-24 00:00:00' AS TimeStamp)
FROM
	"LinqDataTypes" "d"
WHERE
	Extract(day from CAST(Extract(year from "d"."DateTimeValue") || '-02-24 00:00:00' AS TimeStamp)) > 0

