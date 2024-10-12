BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID" + 1
FROM
	"Parent" p
		INNER JOIN "Child" t1 ON p."ParentID" = t1."ParentID" + 1

