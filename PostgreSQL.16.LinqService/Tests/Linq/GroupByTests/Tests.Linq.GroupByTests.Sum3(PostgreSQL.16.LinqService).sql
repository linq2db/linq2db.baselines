﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	(
		SELECT
			Sum("a_Children"."ChildID")
		FROM
			"Child" "a_Children"
		WHERE
			"a_Parent"."ParentID" IS NOT NULL AND "a_Parent"."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Child" g_1
		LEFT JOIN "Parent" "a_Parent" ON g_1."ParentID" = "a_Parent"."ParentID"
GROUP BY
	"a_Parent"."ParentID",
	"a_Parent"."Value1"

