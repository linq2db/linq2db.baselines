-- Firebird.5 Firebird4
DECLARE @separator VarChar(4) -- String
SET     @separator = ' => '

SELECT
	MAX("g_1"."Value4"),
	LIST("g_1"."Value4", CAST(@separator AS VARCHAR(4)))
FROM
	"SampleClass" "g_1"
GROUP BY
	"g_1"."Id",
	"g_1"."Value4"

