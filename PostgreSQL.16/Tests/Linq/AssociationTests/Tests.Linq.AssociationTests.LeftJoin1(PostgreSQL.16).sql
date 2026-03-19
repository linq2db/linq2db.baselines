-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1",
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Parent" t1
		LEFT JOIN "Child" c_1 ON t1."ParentID" = c_1."ParentID"
WHERE
	t1."ParentID" >= 4

