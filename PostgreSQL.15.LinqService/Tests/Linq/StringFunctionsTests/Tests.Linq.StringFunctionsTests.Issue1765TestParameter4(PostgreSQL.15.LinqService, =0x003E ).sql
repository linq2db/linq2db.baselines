BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @separator Text(4) -- String
SET     @separator = ' => '

SELECT
	MAX(g_1."Value4"),
	STRING_AGG(g_1."Value4", :separator)
FROM
	"SampleClass" g_1
GROUP BY
	g_1."Id",
	g_1."Value4"

