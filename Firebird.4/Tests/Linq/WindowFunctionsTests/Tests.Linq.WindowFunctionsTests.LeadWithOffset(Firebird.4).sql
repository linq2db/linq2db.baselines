-- Firebird.4 Firebird4

SELECT
	"t"."Id",
	LEAD("t"."IntValue", 2) OVER (ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

