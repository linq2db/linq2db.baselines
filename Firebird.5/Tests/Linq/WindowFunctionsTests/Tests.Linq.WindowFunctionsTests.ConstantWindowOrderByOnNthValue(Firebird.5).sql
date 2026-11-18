-- Firebird.5 Firebird4
SELECT
	"t"."Id",
	NTH_VALUE("t"."IntValue", 2) OVER ()
FROM
	"WindowFunctionTestEntity" "t"

