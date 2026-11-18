-- Firebird.3 Firebird3
SELECT
	CAST(CAST(Floor(DateDiff(millisecond, "t"."StartedOn", "t"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt)
FROM
	"NullableDateTimeSub" "t"
ORDER BY
	"t"."Id"

