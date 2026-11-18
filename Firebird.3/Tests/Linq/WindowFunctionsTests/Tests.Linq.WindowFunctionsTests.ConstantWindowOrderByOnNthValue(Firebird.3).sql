-- Firebird.3 Firebird3
SELECT
	"t"."Id",
	NTH_VALUE("t"."IntValue", 2) OVER ()
FROM
	"WindowFunctionTestEntity" "t"

