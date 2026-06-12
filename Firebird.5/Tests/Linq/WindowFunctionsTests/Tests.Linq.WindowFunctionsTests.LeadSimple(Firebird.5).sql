-- Firebird.5 Firebird4

SELECT
	"t"."Id",
	LEAD("t"."IntValue") OVER (ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

