-- Firebird.3 Firebird3
SELECT
	"t"."Id",
	ROW_NUMBER() OVER ()
FROM
	"WindowFunctionTestEntity" "t"

