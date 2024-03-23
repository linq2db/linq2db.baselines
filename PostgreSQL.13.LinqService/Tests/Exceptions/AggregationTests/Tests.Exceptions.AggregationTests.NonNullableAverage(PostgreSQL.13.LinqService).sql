BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	AVG(t1."ParentID")
FROM
	"Parent" t1
WHERE
	t1."ParentID" < 0

