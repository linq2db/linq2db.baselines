-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	p."Value1",
	p."ParentID"
FROM
	"Parent" p
WHERE
	p."Value1" = 1 OR p."Value1" = 2

