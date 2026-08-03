-- Firebird.5 Firebird4
SELECT
	CAST(DATEDIFF(millisecond, "t"."StartedOn", "t"."FinishedOn") * 10000 AS BIGINT)
FROM
	"NullableDateTimeSub" "t"
ORDER BY
	"t"."Id"

