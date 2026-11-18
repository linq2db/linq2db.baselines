-- Firebird.4 Firebird4
SELECT
	"t"."Id",
	"t"."CategoryId",
	ROW_NUMBER() OVER (PARTITION BY "t"."CategoryId")
FROM
	"WindowFunctionTestEntity" "t"

