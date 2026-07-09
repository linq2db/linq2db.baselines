-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Child" c_1
		INNER JOIN "Parent" p ON p."ParentID" = c_1."ParentID"

