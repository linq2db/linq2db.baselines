BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID" + 1
FROM
	"Parent" cp,
	"Child" t1
WHERE
	t1."ParentID" > 0

