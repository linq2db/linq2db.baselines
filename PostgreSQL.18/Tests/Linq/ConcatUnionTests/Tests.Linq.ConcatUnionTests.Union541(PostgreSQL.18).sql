﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	p."ParentID",
	p."ParentID",
	p."Value1",
	NULL::Int,
	NULL::Int,
	NULL::Int
FROM
	"Parent" p
UNION
SELECT
	Coalesce(p2."Value1", 0),
	NULL::Int,
	NULL::Int,
	t1.cond,
	t1.cond,
	t1."ChildID"
FROM
	"Parent" p2
		LEFT JOIN LATERAL (
			SELECT
				"a_Children"."ParentID" as cond,
				"a_Children"."ChildID"
			FROM
				"Child" "a_Children"
			WHERE
				p2."ParentID" = "a_Children"."ParentID"
			ORDER BY
				"a_Children"."ChildID" DESC
			LIMIT 1
		) t1 ON 1=1

