-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Child" c_1
		INNER JOIN "Parent" p ON c_1."ParentID" = p."ParentID"

