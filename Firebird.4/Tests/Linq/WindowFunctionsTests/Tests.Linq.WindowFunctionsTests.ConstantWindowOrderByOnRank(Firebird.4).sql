-- Firebird.4 Firebird4
SELECT
	"t"."Id",
	RANK() OVER ()
FROM
	"WindowFunctionTestEntity" "t"

