﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Sum(g_1."Value1"),
	SUM(g_1."Value1")
FROM
	"Parent" g_1
GROUP BY
	g_1."ParentID"

