﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	((NOT EXISTS(
		SELECT
			*
		FROM
			"Child" c_1
		WHERE
			p."ParentID" = c_1."ParentID" AND NOT (((NOT EXISTS(
				SELECT
					*
				FROM
					"GrandChild" g_1
				WHERE
					c_1."ParentID" = g_1."ParentID" AND c_1."ChildID" = g_1."ChildID" AND
					(g_1."ParentID" <= 3 OR g_1."ParentID" IS NULL)
			))))
	)))

