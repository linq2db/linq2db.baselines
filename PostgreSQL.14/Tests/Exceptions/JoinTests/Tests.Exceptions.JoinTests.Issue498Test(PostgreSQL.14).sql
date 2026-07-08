-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	x."ParentID"
FROM
	"Parent" x
		INNER JOIN "Child" y ON x."ParentID" = y."ParentID"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT DISTINCT
	g_1."ParentID"
FROM
	"Parent" g_1
		INNER JOIN "Child" y ON g_1."ParentID" = y."ParentID"

