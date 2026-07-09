-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" IN (2, 3)

