-- Firebird.2.5 Firebird

SELECT
	MAX("g_1"."Value4"),
	LIST("g_1"."Value4", ' -> ')
FROM
	"SampleClass" "g_1"
GROUP BY
	"g_1"."Id",
	"g_1"."Value4"

