﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Sum(g_1."ParentID")
FROM
	"Child" g_1
		LEFT JOIN "Parent" p ON g_1."ParentID" = p."ParentID"
GROUP BY
	g_1."ChildID"

