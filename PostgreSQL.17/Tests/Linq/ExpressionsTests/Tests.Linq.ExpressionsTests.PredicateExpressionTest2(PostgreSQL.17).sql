-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Child" c_1
		INNER JOIN "Parent" p ON p."ParentID" = c_1."ParentID"

