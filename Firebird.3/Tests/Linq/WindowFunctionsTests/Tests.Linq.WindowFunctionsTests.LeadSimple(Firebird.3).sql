-- Firebird.3 Firebird3

SELECT
	"t"."Id",
	LEAD("t"."IntValue") OVER (ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

