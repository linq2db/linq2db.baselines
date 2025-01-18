BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"g_1"."Id",
	LIST("g_1"."Value1", ', ')
FROM
	"SampleClass" "g_1"
GROUP BY
	"g_1"."Id"

