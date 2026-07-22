-- Firebird.4 Firebird4
SELECT
	"t"."Id",
	AVG("t"."IntValue") OVER (PARTITION BY "t"."CategoryId" ORDER BY "t"."IntValue" = 20, "t"."Id"),
	AVG("t"."IntValue") OVER (PARTITION BY "t"."IntValue" = 20 ORDER BY "t"."Id"),
	AVG("t"."IntValue") OVER (PARTITION BY "t"."NullableIntValue" IS NOT NULL ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

