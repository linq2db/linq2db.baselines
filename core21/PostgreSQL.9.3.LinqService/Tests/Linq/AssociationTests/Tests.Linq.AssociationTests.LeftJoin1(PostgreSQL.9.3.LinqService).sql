BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	p."ParentID",
	p."Value1",
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" p
		LEFT JOIN "Child" t1 ON p."ParentID" = t1."ParentID"
WHERE
	p."ParentID" >= 4

