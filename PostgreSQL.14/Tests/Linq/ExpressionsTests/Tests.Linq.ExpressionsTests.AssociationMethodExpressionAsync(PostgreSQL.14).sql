﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
				INNER JOIN "GrandChild" "a_GrandChildren" ON "a_Children"."ParentID" = "a_GrandChildren"."ParentID" AND "a_GrandChildren"."ParentID" IS NOT NULL AND "a_Children"."ChildID" = "a_GrandChildren"."ChildID" AND "a_GrandChildren"."ChildID" IS NOT NULL
		WHERE
			p."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" p

