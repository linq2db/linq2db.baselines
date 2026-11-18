-- Firebird.5 Firebird4
SELECT
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "e"."Date", "e"."Date2") * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / CAST(CAST(CAST(Floor(DateDiff(millisecond, "j"."Date", "j"."Date2") * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION)
FROM
	"MissedDivisorEntity" "e"
		LEFT JOIN "MissedDivisorEntity" "j" ON "j"."Id" = "e"."Id" + 1000

