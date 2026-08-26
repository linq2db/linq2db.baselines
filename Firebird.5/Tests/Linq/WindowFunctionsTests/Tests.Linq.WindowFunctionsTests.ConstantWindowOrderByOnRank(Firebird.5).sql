-- Firebird.5 Firebird4
SELECT
	"t"."Id",
	RANK() OVER ()
FROM
	"WindowFunctionTestEntity" "t"

