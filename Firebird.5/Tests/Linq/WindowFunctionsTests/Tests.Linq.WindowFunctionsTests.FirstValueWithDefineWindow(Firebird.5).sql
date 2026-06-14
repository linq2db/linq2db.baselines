-- Firebird.5 Firebird4

SELECT
	"t"."Id",
	FIRST_VALUE("t"."IntValue") OVER (PARTITION BY "t"."CategoryId" ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

