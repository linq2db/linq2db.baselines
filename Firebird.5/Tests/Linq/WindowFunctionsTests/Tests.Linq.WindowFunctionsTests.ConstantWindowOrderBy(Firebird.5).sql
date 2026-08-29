-- Firebird.5 Firebird4
SELECT
	"t"."Id",
	ROW_NUMBER() OVER (),
	ROW_NUMBER() OVER (ORDER BY "t"."Id"),
	ROW_NUMBER() OVER (ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

