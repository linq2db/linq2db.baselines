-- Firebird.5 Firebird4

SELECT
	"t"."Id",
	LAST_VALUE("t"."IntValue") OVER (PARTITION BY "t"."CategoryId" ORDER BY "t"."Id" ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
FROM
	"WindowFunctionTestEntity" "t"

