BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	MAX("g_1"."Value1"),
	LIST("g_1"."Value1", ' -> ')
FROM
	"SampleClass" "g_1"
GROUP BY
	"g_1"."Id",
	"g_1"."Value1"

