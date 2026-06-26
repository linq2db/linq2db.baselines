-- Firebird.4 Firebird4

SELECT
	"t"."Id",
	LAG("t"."IntValue") OVER (PARTITION BY "t"."CategoryId" ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

