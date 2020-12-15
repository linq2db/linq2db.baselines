BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	t1."ParentID" + 1
FROM
	"Parent" cp,
	"Child" t1
WHERE
	t1."ParentID" > 0

