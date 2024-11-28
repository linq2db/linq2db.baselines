﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		INNER JOIN "GrandChild" g_1 ON p."ParentID" = g_1."ParentID"
		INNER JOIN "Child" c_1 ON g_1."ChildID" = c_1."ChildID"
WHERE
	NOT EXISTS(
		SELECT
			1
		FROM
			"GrandChild" x
		WHERE
			p."ParentID" = x."ParentID" AND x."ParentID" < 0
	)

