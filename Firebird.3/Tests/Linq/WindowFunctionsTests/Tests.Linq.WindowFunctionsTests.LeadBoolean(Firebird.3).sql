-- Firebird.3 Firebird3
SELECT
	"t"."Id",
	LEAD("t"."IntValue" = 20) OVER (ORDER BY "t"."Id"),
	LEAD("t"."IntValue") OVER (ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"
ORDER BY
	"t"."Id"

