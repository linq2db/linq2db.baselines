-- Firebird.5 Firebird4
SELECT
	CAST(CAST("d"."DateTimeValue" AS TimeStamp) AS Date)
FROM
	"LinqDataTypes" "d"
WHERE
	Extract(day from CAST("d"."DateTimeValue" AS TimeStamp)) > 0

