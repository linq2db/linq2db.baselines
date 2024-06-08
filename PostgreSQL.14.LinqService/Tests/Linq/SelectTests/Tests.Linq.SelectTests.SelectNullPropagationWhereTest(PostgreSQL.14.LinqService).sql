﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	p."Value1",
	"a_Parent_1"."ParentID",
	"a_Parent_1"."Value1"
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON c_1."ParentID" = p."ParentID"
		LEFT JOIN "Parent" "a_Parent" ON c_1."ParentID" = "a_Parent"."ParentID"
		LEFT JOIN "Parent" "a_Parent_1" ON c_1."ParentID" = "a_Parent_1"."ParentID"
WHERE
	(p."ParentID" > 0 OR p."Value1" > 0 OR "a_Parent"."Value1" > 0)
ORDER BY
	p."ParentID",
	p."Value1",
	"a_Parent"."Value1"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID",
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
FROM
	"Child" t1
		LEFT JOIN "Parent" "a_Parent" ON t1."ParentID" = "a_Parent"."ParentID"

