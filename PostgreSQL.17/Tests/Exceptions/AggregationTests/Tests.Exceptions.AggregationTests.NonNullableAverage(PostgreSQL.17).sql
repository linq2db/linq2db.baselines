-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	AVG(t1."ParentID")
FROM
	"Parent" t1
WHERE
	t1."ParentID" < 0

