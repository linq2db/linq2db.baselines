BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"g_1"."Not Identifier",
	COUNT(*),
	SUM("g_1"."Some Value")
FROM
	"DynamicTable" "g_1"
GROUP BY
	"g_1"."Not Identifier"

