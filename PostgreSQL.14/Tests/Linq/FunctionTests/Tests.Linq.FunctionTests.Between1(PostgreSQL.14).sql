-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."Value1" BETWEEN 1 AND 10

