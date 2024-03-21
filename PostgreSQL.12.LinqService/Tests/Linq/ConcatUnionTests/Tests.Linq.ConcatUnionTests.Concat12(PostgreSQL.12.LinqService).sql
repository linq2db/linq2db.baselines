﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	p."Value1",
	Cast(NULL as Int),
	Cast(NULL as Int),
	Cast(NULL as Int)
FROM
	"Parent" p
WHERE
	p."ParentID" = 1
UNION ALL
SELECT
	Cast(NULL as Int),
	Cast(NULL as Int),
	"a_Parent"."ParentID",
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
FROM
	"Child" ch
		LEFT JOIN "Parent" "a_Parent" ON ch."ParentID" = "a_Parent"."ParentID"
WHERE
	ch."ParentID" = 2

