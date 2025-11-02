-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @separator Text(4) -- String
SET     @separator = ' -> '

SELECT
	STRING_AGG(g_1."Value4", :separator ORDER BY g_1."Value3" DESC, g_1."Value4")
FROM
	"SampleClass" g_1
GROUP BY
	g_1."Id",
	g_1."Value4"

