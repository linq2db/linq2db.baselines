-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	AVG(t1."ParentID")
FROM
	"Parent" t1
WHERE
	t1."ParentID" < 0

