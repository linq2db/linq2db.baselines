-- Firebird.5 Firebird4

SELECT
	"t"."Id",
	CAST("t"."IntValue" AS DOUBLE PRECISION) / SUM("t"."IntValue") OVER (PARTITION BY "t"."CategoryId")
FROM
	"WindowFunctionTestEntity" "t"

