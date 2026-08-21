-- Firebird.3 Firebird3
SELECT
	CAST(DateDiff(millisecond, "t"."StartedOn", "t"."FinishedOn") * 10000 AS BigInt)
FROM
	"NullableDateTimeSub" "t"
ORDER BY
	"t"."Id"

