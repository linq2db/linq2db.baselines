-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	MAX(t1."ParentID")
FROM
	"Parent" t1
WHERE
	t1."ParentID" < 0

