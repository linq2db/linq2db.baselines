-- Firebird.4 Firebird4

SELECT
	"t"."Id",
	CAST("t"."IntValue" AS DOUBLE PRECISION) / NULLIF(CAST(SUM("t"."IntValue") OVER (PARTITION BY "t"."CategoryId") AS DOUBLE PRECISION), 0)
FROM
	"WindowFunctionTestEntity" "t"

