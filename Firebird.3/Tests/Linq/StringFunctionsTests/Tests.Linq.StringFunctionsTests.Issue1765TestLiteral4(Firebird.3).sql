BeforeExecute
-- Firebird.3 Firebird3

SELECT
	MAX("g_1"."Value4"),
	LIST("g_1"."Value4", ' -> ')
FROM
	"SampleClass" "g_1"
GROUP BY
	"g_1"."Id",
	"g_1"."Value4"

