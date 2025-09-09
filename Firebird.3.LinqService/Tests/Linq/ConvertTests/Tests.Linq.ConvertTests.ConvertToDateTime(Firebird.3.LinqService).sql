BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	CAST(Extract(year from "p"."DateTimeValue") || '-01-01 00:00:00' AS TimeStamp)
FROM
	"LinqDataTypes" "p"
WHERE
	Extract(day from CAST(Extract(year from "p"."DateTimeValue") || '-01-01 00:00:00' AS TimeStamp)) > 0

