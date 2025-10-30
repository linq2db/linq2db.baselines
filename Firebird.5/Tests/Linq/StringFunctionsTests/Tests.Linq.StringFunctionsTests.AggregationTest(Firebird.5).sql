-- Firebird.5 Firebird4

SELECT
	MAX("g_1"."Value1"),
	LIST("g_1"."Value1", ' -> ')
FROM
	"SampleClass" "g_1"
GROUP BY
	"g_1"."Id",
	"g_1"."Value1"

