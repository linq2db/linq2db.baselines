-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" BETWEEN 1 AND 10

