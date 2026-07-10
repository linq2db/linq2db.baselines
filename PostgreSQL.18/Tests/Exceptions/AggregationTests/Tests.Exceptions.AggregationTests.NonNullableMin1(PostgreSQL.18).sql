-- PostgreSQL.18 PostgreSQL12
SELECT
	MIN(t1."ParentID")
FROM
	"Parent" t1
WHERE
	t1."ParentID" < 0

