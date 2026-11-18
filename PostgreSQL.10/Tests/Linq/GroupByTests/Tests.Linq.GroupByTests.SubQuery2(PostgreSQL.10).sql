-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT DISTINCT
	g_1."ParentID" + 1
FROM
	"Child" g_1
WHERE
	g_1."ParentID" + 1 > :n

