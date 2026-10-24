-- Firebird.3 Firebird3
SELECT
	"t"."Id",
	ROW_NUMBER() OVER (),
	ROW_NUMBER() OVER (ORDER BY "t"."Id"),
	ROW_NUMBER() OVER (ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

