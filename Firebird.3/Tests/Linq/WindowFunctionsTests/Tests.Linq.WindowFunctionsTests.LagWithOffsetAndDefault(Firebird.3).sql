-- Firebird.3 Firebird3

SELECT
	"t"."Id",
	LAG("t"."IntValue", 2, 0) OVER (ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

