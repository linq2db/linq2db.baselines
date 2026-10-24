-- Firebird.4 Firebird4
SELECT
	"t"."Id",
	NTILE(4) OVER ()
FROM
	"WindowFunctionTestEntity" "t"

