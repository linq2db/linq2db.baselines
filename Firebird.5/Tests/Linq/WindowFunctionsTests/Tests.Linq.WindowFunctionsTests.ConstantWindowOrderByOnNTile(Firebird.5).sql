-- Firebird.5 Firebird4
SELECT
	"t"."Id",
	NTILE(4) OVER ()
FROM
	"WindowFunctionTestEntity" "t"

