BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID" + 1
FROM
	"Parent" cp
		INNER JOIN "Child" t1 ON cp."ParentID" = t1."ParentID" + 1

