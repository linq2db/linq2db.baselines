﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	STRING_AGG(g_1."Value4", ' -> ' ORDER BY g_1."Value3" DESC, g_1."Value4")
FROM
	"SampleClass" g_1
GROUP BY
	g_1."Id",
	g_1."Value4"

