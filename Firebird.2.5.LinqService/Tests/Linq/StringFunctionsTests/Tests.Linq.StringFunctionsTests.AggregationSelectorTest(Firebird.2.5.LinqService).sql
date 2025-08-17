BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	LIST("g_1"."Value1", ' -> ')
FROM
	"SampleClass" "g_1"
GROUP BY
	"g_1"."Id",
	"g_1"."Value1"

