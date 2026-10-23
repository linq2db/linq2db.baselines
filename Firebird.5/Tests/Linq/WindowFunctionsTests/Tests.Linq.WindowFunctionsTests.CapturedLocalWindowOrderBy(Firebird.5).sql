-- Firebird.5 Firebird4
SELECT
	"t"."Id",
	ROW_NUMBER() OVER ()
FROM
	"WindowFunctionTestEntity" "t"

