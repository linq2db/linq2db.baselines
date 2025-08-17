BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"g_1"."Id",
	LIST("g_1"."Value1", ', ')
FROM
	"SampleClass" "g_1"
GROUP BY
	"g_1"."Id"

