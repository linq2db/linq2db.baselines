﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Sum(g_1."ChildID"),
	Min(g_1."ChildID"),
	Max(g_1."ChildID"),
	Avg(g_1."ChildID"),
	Count(*)
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

