﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t2."ParentID",
	t2."ChildID"
FROM
	"GrandChild" p
		LEFT JOIN "Child" "a_Child" ON p."ParentID" = "a_Child"."ParentID" AND p."ChildID" = "a_Child"."ChildID"
		LEFT JOIN "Parent" "a_Parent" ON "a_Child"."ParentID" = "a_Parent"."ParentID"
		LEFT JOIN LATERAL (
			SELECT
				t1."ParentID",
				t1."ChildID"
			FROM
				"Child" t1
			WHERE
				"a_Parent"."ParentID" = t1."ParentID"
			ORDER BY
				t1."ChildID"
			LIMIT :take
		) t2 ON 1=1
WHERE
	p."ChildID" > 0

