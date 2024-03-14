﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	p1."ParentID",
	p1."ParentID",
	p1."Value1",
	Cast(NULL as Int),
	Cast(NULL as Int),
	Cast(NULL as Int)
FROM
	"Parent" p1
UNION
SELECT
	Coalesce(p2."Value1", 0),
	Cast(NULL as Int),
	Cast(NULL as Int),
	t1."ParentID",
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" p2
		LEFT JOIN LATERAL (
			SELECT
				"a_Children"."ParentID",
				"a_Children"."ChildID"
			FROM
				"Child" "a_Children"
			WHERE
				p2."ParentID" = "a_Children"."ParentID"
			ORDER BY
				"a_Children"."ChildID" DESC
			LIMIT 1
		) t1 ON 1=1

