-- Firebird.3 Firebird3
SELECT
	"t"."Id",
	RANK() OVER ()
FROM
	"WindowFunctionTestEntity" "t"

